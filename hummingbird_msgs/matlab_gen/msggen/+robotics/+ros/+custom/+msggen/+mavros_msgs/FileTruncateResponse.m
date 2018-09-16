classdef FileTruncateResponse < robotics.ros.Message
    %FileTruncateResponse MATLAB implementation of mavros_msgs/FileTruncateResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'mavros_msgs/FileTruncateResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '85394f2e941a8937ac567a617f06157f' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Dependent)
        Success
        RErrno
    end
    
    properties (Constant, Hidden)
        PropertyList = {'RErrno', 'Success'} % List of non-constant message properties
        ROSPropertyList = {'r_errno', 'success'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = FileTruncateResponse(msg)
            %FileTruncateResponse Construct the message object FileTruncateResponse
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
        
        function success = get.Success(obj)
            %get.Success Get the value for property Success
            success = logical(obj.JavaMessage.getSuccess);
        end
        
        function set.Success(obj, success)
            %set.Success Set the value for property Success
            validateattributes(success, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'FileTruncateResponse', 'Success');
            
            obj.JavaMessage.setSuccess(success);
        end
        
        function rerrno = get.RErrno(obj)
            %get.RErrno Get the value for property RErrno
            rerrno = int32(obj.JavaMessage.getRErrno);
        end
        
        function set.RErrno(obj, rerrno)
            %set.RErrno Set the value for property RErrno
            validateattributes(rerrno, {'numeric'}, {'nonempty', 'scalar'}, 'FileTruncateResponse', 'RErrno');
            
            obj.JavaMessage.setRErrno(rerrno);
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
            cpObj.Success = obj.Success;
            cpObj.RErrno = obj.RErrno;
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Success = strObj.Success;
            obj.RErrno = strObj.RErrno;
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
            
            strObj.Success = obj.Success;
            strObj.RErrno = obj.RErrno;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.mavros_msgs.FileTruncateResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.mavros_msgs.FileTruncateResponse;
            obj.reload(strObj);
        end
    end
end
