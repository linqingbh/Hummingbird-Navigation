classdef Trajectory < robotics.ros.Message
    %Trajectory MATLAB implementation of mavros_msgs/Trajectory
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'mavros_msgs/Trajectory' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '3d34ec9673348ab7c0bc80373ec76fc8' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        MAVTRAJECTORYREPRESENTATIONWAYPOINTS = uint8(0)
        MAVTRAJECTORYREPRESENTATIONBEZIER = uint8(1)
    end
    
    properties (Constant, Access = protected)
        MavrosMsgsPositionTargetClass = robotics.ros.msg.internal.MessageFactory.getClassForType('mavros_msgs/PositionTarget') % Dispatch to MATLAB class for message type mavros_msgs/PositionTarget
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        Type
        Point1
        Point2
        Point3
        Point4
        Point5
        PointValid
        TimeHorizon
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'Point1', [], 'Point2', [], 'Point3', [], 'Point4', [], 'Point5', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Header', 'Point1', 'Point2', 'Point3', 'Point4', 'Point5', 'PointValid', 'TimeHorizon', 'Type'} % List of non-constant message properties
        ROSPropertyList = {'header', 'point_1', 'point_2', 'point_3', 'point_4', 'point_5', 'point_valid', 'time_horizon', 'type'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Trajectory(msg)
            %Trajectory Construct the message object Trajectory
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'Trajectory', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function type = get.Type(obj)
            %get.Type Get the value for property Type
            type = typecast(int8(obj.JavaMessage.getType), 'uint8');
        end
        
        function set.Type(obj, type)
            %set.Type Set the value for property Type
            validateattributes(type, {'numeric'}, {'nonempty', 'scalar'}, 'Trajectory', 'Type');
            
            obj.JavaMessage.setType(type);
        end
        
        function point1 = get.Point1(obj)
            %get.Point1 Get the value for property Point1
            if isempty(obj.Cache.Point1)
                obj.Cache.Point1 = feval(obj.MavrosMsgsPositionTargetClass, obj.JavaMessage.getPoint1);
            end
            point1 = obj.Cache.Point1;
        end
        
        function set.Point1(obj, point1)
            %set.Point1 Set the value for property Point1
            validateattributes(point1, {obj.MavrosMsgsPositionTargetClass}, {'nonempty', 'scalar'}, 'Trajectory', 'Point1');
            
            obj.JavaMessage.setPoint1(point1.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Point1)
                obj.Cache.Point1.setJavaObject(point1.getJavaObject);
            end
        end
        
        function point2 = get.Point2(obj)
            %get.Point2 Get the value for property Point2
            if isempty(obj.Cache.Point2)
                obj.Cache.Point2 = feval(obj.MavrosMsgsPositionTargetClass, obj.JavaMessage.getPoint2);
            end
            point2 = obj.Cache.Point2;
        end
        
        function set.Point2(obj, point2)
            %set.Point2 Set the value for property Point2
            validateattributes(point2, {obj.MavrosMsgsPositionTargetClass}, {'nonempty', 'scalar'}, 'Trajectory', 'Point2');
            
            obj.JavaMessage.setPoint2(point2.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Point2)
                obj.Cache.Point2.setJavaObject(point2.getJavaObject);
            end
        end
        
        function point3 = get.Point3(obj)
            %get.Point3 Get the value for property Point3
            if isempty(obj.Cache.Point3)
                obj.Cache.Point3 = feval(obj.MavrosMsgsPositionTargetClass, obj.JavaMessage.getPoint3);
            end
            point3 = obj.Cache.Point3;
        end
        
        function set.Point3(obj, point3)
            %set.Point3 Set the value for property Point3
            validateattributes(point3, {obj.MavrosMsgsPositionTargetClass}, {'nonempty', 'scalar'}, 'Trajectory', 'Point3');
            
            obj.JavaMessage.setPoint3(point3.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Point3)
                obj.Cache.Point3.setJavaObject(point3.getJavaObject);
            end
        end
        
        function point4 = get.Point4(obj)
            %get.Point4 Get the value for property Point4
            if isempty(obj.Cache.Point4)
                obj.Cache.Point4 = feval(obj.MavrosMsgsPositionTargetClass, obj.JavaMessage.getPoint4);
            end
            point4 = obj.Cache.Point4;
        end
        
        function set.Point4(obj, point4)
            %set.Point4 Set the value for property Point4
            validateattributes(point4, {obj.MavrosMsgsPositionTargetClass}, {'nonempty', 'scalar'}, 'Trajectory', 'Point4');
            
            obj.JavaMessage.setPoint4(point4.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Point4)
                obj.Cache.Point4.setJavaObject(point4.getJavaObject);
            end
        end
        
        function point5 = get.Point5(obj)
            %get.Point5 Get the value for property Point5
            if isempty(obj.Cache.Point5)
                obj.Cache.Point5 = feval(obj.MavrosMsgsPositionTargetClass, obj.JavaMessage.getPoint5);
            end
            point5 = obj.Cache.Point5;
        end
        
        function set.Point5(obj, point5)
            %set.Point5 Set the value for property Point5
            validateattributes(point5, {obj.MavrosMsgsPositionTargetClass}, {'nonempty', 'scalar'}, 'Trajectory', 'Point5');
            
            obj.JavaMessage.setPoint5(point5.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Point5)
                obj.Cache.Point5.setJavaObject(point5.getJavaObject);
            end
        end
        
        function pointvalid = get.PointValid(obj)
            %get.PointValid Get the value for property PointValid
            javaArray = obj.JavaMessage.getPointValid;
            array = obj.readJavaArray(javaArray, 'uint8');
            pointvalid = uint8(array);
        end
        
        function set.PointValid(obj, pointvalid)
            %set.PointValid Set the value for property PointValid
            validateattributes(pointvalid, {'numeric'}, {'vector', 'numel', 5}, 'Trajectory', 'PointValid');
            
            javaArray = obj.JavaMessage.getPointValid;
            array = obj.writeJavaArray(pointvalid, javaArray, 'uint8');
            obj.JavaMessage.setPointValid(array);
        end
        
        function timehorizon = get.TimeHorizon(obj)
            %get.TimeHorizon Get the value for property TimeHorizon
            javaArray = obj.JavaMessage.getTimeHorizon;
            array = obj.readJavaArray(javaArray, 'single');
            timehorizon = single(array);
        end
        
        function set.TimeHorizon(obj, timehorizon)
            %set.TimeHorizon Set the value for property TimeHorizon
            validateattributes(timehorizon, {'numeric'}, {'vector', 'numel', 5}, 'Trajectory', 'TimeHorizon');
            
            javaArray = obj.JavaMessage.getTimeHorizon;
            array = obj.writeJavaArray(timehorizon, javaArray, 'single');
            obj.JavaMessage.setTimeHorizon(array);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
            obj.Cache.Point1 = [];
            obj.Cache.Point2 = [];
            obj.Cache.Point3 = [];
            obj.Cache.Point4 = [];
            obj.Cache.Point5 = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Type = obj.Type;
            cpObj.PointValid = obj.PointValid;
            cpObj.TimeHorizon = obj.TimeHorizon;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
            cpObj.Point1 = copy(obj.Point1);
            cpObj.Point2 = copy(obj.Point2);
            cpObj.Point3 = copy(obj.Point3);
            cpObj.Point4 = copy(obj.Point4);
            cpObj.Point5 = copy(obj.Point5);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Type = strObj.Type;
            obj.PointValid = strObj.PointValid;
            obj.TimeHorizon = strObj.TimeHorizon;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.Point1 = feval([obj.MavrosMsgsPositionTargetClass '.loadobj'], strObj.Point1);
            obj.Point2 = feval([obj.MavrosMsgsPositionTargetClass '.loadobj'], strObj.Point2);
            obj.Point3 = feval([obj.MavrosMsgsPositionTargetClass '.loadobj'], strObj.Point3);
            obj.Point4 = feval([obj.MavrosMsgsPositionTargetClass '.loadobj'], strObj.Point4);
            obj.Point5 = feval([obj.MavrosMsgsPositionTargetClass '.loadobj'], strObj.Point5);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Type = obj.Type;
            strObj.PointValid = obj.PointValid;
            strObj.TimeHorizon = obj.TimeHorizon;
            strObj.Header = saveobj(obj.Header);
            strObj.Point1 = saveobj(obj.Point1);
            strObj.Point2 = saveobj(obj.Point2);
            strObj.Point3 = saveobj(obj.Point3);
            strObj.Point4 = saveobj(obj.Point4);
            strObj.Point5 = saveobj(obj.Point5);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.mavros_msgs.Trajectory.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.mavros_msgs.Trajectory;
            obj.reload(strObj);
        end
    end
end
