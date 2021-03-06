% Compute the error of a pose-landmark constraint
% x 3x1 vector (x,y,theta) of the robot pose
% l 2x1 vector (x,y) of the landmark
% z 2x1 vector (x,y) of the measurement, the position of the landmark in
%   the coordinate frame of the robot given by the vector x
%
% Output
% e 2x1 error of the constraint
% A 2x3 Jacobian wrt x
% B 2x2 Jacobian wrt l
function [e, A, B] = linearize_pose_landmark_constraint(x, l, z)

  % TODO compute the error and the Jacobians of the error
  T = v2t(x);
  e = T(1:2,1:2)'*(l-x(1:2)) - z;

  A = double([ -cos(x(3)), -sin(x(3)),   cos(x(3))*(l(2) - x(2)) - sin(x(3))*(l(1) - x(1))
     sin(x(3)), -cos(x(3)), - cos(x(3))*(l(1) - x(1)) - sin(x(3))*(l(2) - x(2))]);
  
  B = double([  cos(x(3)), sin(x(3))
     -sin(x(3)), cos(x(3))]);

  


end
