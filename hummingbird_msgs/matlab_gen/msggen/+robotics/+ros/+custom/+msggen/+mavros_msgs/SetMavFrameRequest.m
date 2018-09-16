classdef SetMavFrameRequest < robotics.ros.Message
    %SetMavFrameRequest MATLAB implementation of mavros_msgs/SetMavFrameRequest
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'mavros_msgs/SetMavFrameRequest' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '4102fcf8d7971e4f06392711a40bc2cd' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        FRAMEGLOBAL = uint8(0)
        FRAMELOCALNED = uint8(1)
        FRAMEMISSION = uint8(2)
        FRAMEGLOBALRELATIVEALT = uint8(3)
        FRAMELOCALENU = uint8(4)
        FRAMEGLOBALINT = uint8(5)
        FRAMEGLOBALRELATIVEALTINT = uint8(6)
        FRAMELOCALOFFSETNED = uint8(7)
        FRAMEBODYNED = uint8(8)
        FRAMEBODYOFFSETNED = uint8(9)
        FRAMEGLOBALTERRAINALT = uint8(10)
        FRAMEGLOBALTERRAINALTINT = uint8(11)
    end
    
    properties (Dependent)
        MavFrame
    end
    
    properties (Constant, Hidden)
        PropertyList = {'MavFrame'} % List of non-constant message properties
        ROSPropertyList = {'mav_frame'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = SetMavFrameRequest(msg)
            %SetMavFrameRequest Construct the message object SetMavFrameRequest
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
        
        function mavframe = get.MavFrame(obj)
            %get.MavFrame Get the value for property MavFrame
            mavframe = typecast(int8(obj.JavaMessage.getMavFrame), 'uint8');
        end
        
        function set.MavFrame(obj, mavframe)
            %set.MavFrame Set the value for property MavFrame
            validateattributes(mavframe, {'numeric'}, {'nonempty', 'scalar'}, 'SetMavFrameRequest', 'MavFrame');
            
            obj.JavaMessage.setMavFrame(mavframe);
        end
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.MavFrame = obj.MavFrame;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.MavFrame = strObj.MavFrame;
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
            
            strObj.MavFrame = obj.MavFrame;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.mavros_msgs.SetMavFrameRequest.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.mavros_msgs.SetMavFrameRequest;
            obj.reload(strObj);
        end
    end
end
