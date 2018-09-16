classdef FlowArray < robotics.ros.Message
    %FlowArray MATLAB implementation of opencv_apps/FlowArray
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'opencv_apps/FlowArray' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'fe292dca56eb3673cd698ea9ef841962' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        OpencvAppsFlowClass = robotics.ros.msg.internal.MessageFactory.getClassForType('opencv_apps/Flow') % Dispatch to MATLAB class for message type opencv_apps/Flow
    end
    
    properties (Dependent)
        Flow
    end
    
    properties (Access = protected)
        Cache = struct('Flow', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Flow'} % List of non-constant message properties
        ROSPropertyList = {'flow'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = FlowArray(msg)
            %FlowArray Construct the message object FlowArray
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
        
        function flow = get.Flow(obj)
            %get.Flow Get the value for property Flow
            if isempty(obj.Cache.Flow)
                javaArray = obj.JavaMessage.getFlow;
                array = obj.readJavaArray(javaArray, obj.OpencvAppsFlowClass);
                obj.Cache.Flow = feval(obj.OpencvAppsFlowClass, array);
            end
            flow = obj.Cache.Flow;
        end
        
        function set.Flow(obj, flow)
            %set.Flow Set the value for property Flow
            if ~isvector(flow) && isempty(flow)
                % Allow empty [] input
                flow = feval([obj.OpencvAppsFlowClass '.empty'], 0, 1);
            end
            
            validateattributes(flow, {obj.OpencvAppsFlowClass}, {'vector'}, 'FlowArray', 'Flow');
            
            javaArray = obj.JavaMessage.getFlow;
            array = obj.writeJavaArray(flow, javaArray, obj.OpencvAppsFlowClass);
            obj.JavaMessage.setFlow(array);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Flow)
                obj.Cache.Flow = [];
                obj.Cache.Flow = obj.Flow;
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Flow = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Recursively copy compound properties
            cpObj.Flow = copy(obj.Flow);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            FlowCell = arrayfun(@(x) feval([obj.OpencvAppsFlowClass '.loadobj'], x), strObj.Flow, 'UniformOutput', false);
            obj.Flow = vertcat(FlowCell{:});
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
            
            strObj.Flow = arrayfun(@(x) saveobj(x), obj.Flow);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.opencv_apps.FlowArray.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.opencv_apps.FlowArray;
            obj.reload(strObj);
        end
    end
end