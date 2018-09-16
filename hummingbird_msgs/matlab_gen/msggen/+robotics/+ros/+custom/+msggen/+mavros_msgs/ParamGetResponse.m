classdef ParamGetResponse < robotics.ros.Message
    %ParamGetResponse MATLAB implementation of mavros_msgs/ParamGetResponse
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'mavros_msgs/ParamGetResponse' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '790d22b22b9dbf32a8e8d55578e25477' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        MavrosMsgsParamValueClass = robotics.ros.msg.internal.MessageFactory.getClassForType('mavros_msgs/ParamValue') % Dispatch to MATLAB class for message type mavros_msgs/ParamValue
    end
    
    properties (Dependent)
        Success
        Value
    end
    
    properties (Access = protected)
        Cache = struct('Value', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Success', 'Value'} % List of non-constant message properties
        ROSPropertyList = {'success', 'value'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = ParamGetResponse(msg)
            %ParamGetResponse Construct the message object ParamGetResponse
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
            validateattributes(success, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'ParamGetResponse', 'Success');
            
            obj.JavaMessage.setSuccess(success);
        end
        
        function value = get.Value(obj)
            %get.Value Get the value for property Value
            if isempty(obj.Cache.Value)
                obj.Cache.Value = feval(obj.MavrosMsgsParamValueClass, obj.JavaMessage.getValue);
            end
            value = obj.Cache.Value;
        end
        
        function set.Value(obj, value)
            %set.Value Set the value for property Value
            validateattributes(value, {obj.MavrosMsgsParamValueClass}, {'nonempty', 'scalar'}, 'ParamGetResponse', 'Value');
            
            obj.JavaMessage.setValue(value.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Value)
                obj.Cache.Value.setJavaObject(value.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Value = [];
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
            cpObj.Success = obj.Success;
            
            % Recursively copy compound properties
            cpObj.Value = copy(obj.Value);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Success = strObj.Success;
            obj.Value = feval([obj.MavrosMsgsParamValueClass '.loadobj'], strObj.Value);
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
            strObj.Value = saveobj(obj.Value);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.mavros_msgs.ParamGetResponse.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.mavros_msgs.ParamGetResponse;
            obj.reload(strObj);
        end
    end
end