classdef Moment < robotics.ros.Message
    %Moment MATLAB implementation of opencv_apps/Moment
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'opencv_apps/Moment' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '560ee3fabfffb4ed4155742d6db8a03c' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        OpencvAppsPoint2DClass = robotics.ros.msg.internal.MessageFactory.getClassForType('opencv_apps/Point2D') % Dispatch to MATLAB class for message type opencv_apps/Point2D
    end
    
    properties (Dependent)
        M00
        M10
        M01
        M20
        M11
        M02
        M30
        M21
        M12
        M03
        Mu20
        Mu11
        Mu02
        Mu30
        Mu21
        Mu12
        Mu03
        Nu20
        Nu11
        Nu02
        Nu30
        Nu21
        Nu12
        Nu03
        Center
        Length
        Area
    end
    
    properties (Access = protected)
        Cache = struct('Center', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Area', 'Center', 'Length', 'M00', 'M01', 'M02', 'M03', 'M10', 'M11', 'M12', 'M20', 'M21', 'M30', 'Mu02', 'Mu03', 'Mu11', 'Mu12', 'Mu20', 'Mu21', 'Mu30', 'Nu02', 'Nu03', 'Nu11', 'Nu12', 'Nu20', 'Nu21', 'Nu30'} % List of non-constant message properties
        ROSPropertyList = {'area', 'center', 'length', 'm00', 'm01', 'm02', 'm03', 'm10', 'm11', 'm12', 'm20', 'm21', 'm30', 'mu02', 'mu03', 'mu11', 'mu12', 'mu20', 'mu21', 'mu30', 'nu02', 'nu03', 'nu11', 'nu12', 'nu20', 'nu21', 'nu30'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = Moment(msg)
            %Moment Construct the message object Moment
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
        
        function m00 = get.M00(obj)
            %get.M00 Get the value for property M00
            m00 = double(obj.JavaMessage.getM00);
        end
        
        function set.M00(obj, m00)
            %set.M00 Set the value for property M00
            validateattributes(m00, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M00');
            
            obj.JavaMessage.setM00(m00);
        end
        
        function m10 = get.M10(obj)
            %get.M10 Get the value for property M10
            m10 = double(obj.JavaMessage.getM10);
        end
        
        function set.M10(obj, m10)
            %set.M10 Set the value for property M10
            validateattributes(m10, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M10');
            
            obj.JavaMessage.setM10(m10);
        end
        
        function m01 = get.M01(obj)
            %get.M01 Get the value for property M01
            m01 = double(obj.JavaMessage.getM01);
        end
        
        function set.M01(obj, m01)
            %set.M01 Set the value for property M01
            validateattributes(m01, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M01');
            
            obj.JavaMessage.setM01(m01);
        end
        
        function m20 = get.M20(obj)
            %get.M20 Get the value for property M20
            m20 = double(obj.JavaMessage.getM20);
        end
        
        function set.M20(obj, m20)
            %set.M20 Set the value for property M20
            validateattributes(m20, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M20');
            
            obj.JavaMessage.setM20(m20);
        end
        
        function m11 = get.M11(obj)
            %get.M11 Get the value for property M11
            m11 = double(obj.JavaMessage.getM11);
        end
        
        function set.M11(obj, m11)
            %set.M11 Set the value for property M11
            validateattributes(m11, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M11');
            
            obj.JavaMessage.setM11(m11);
        end
        
        function m02 = get.M02(obj)
            %get.M02 Get the value for property M02
            m02 = double(obj.JavaMessage.getM02);
        end
        
        function set.M02(obj, m02)
            %set.M02 Set the value for property M02
            validateattributes(m02, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M02');
            
            obj.JavaMessage.setM02(m02);
        end
        
        function m30 = get.M30(obj)
            %get.M30 Get the value for property M30
            m30 = double(obj.JavaMessage.getM30);
        end
        
        function set.M30(obj, m30)
            %set.M30 Set the value for property M30
            validateattributes(m30, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M30');
            
            obj.JavaMessage.setM30(m30);
        end
        
        function m21 = get.M21(obj)
            %get.M21 Get the value for property M21
            m21 = double(obj.JavaMessage.getM21);
        end
        
        function set.M21(obj, m21)
            %set.M21 Set the value for property M21
            validateattributes(m21, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M21');
            
            obj.JavaMessage.setM21(m21);
        end
        
        function m12 = get.M12(obj)
            %get.M12 Get the value for property M12
            m12 = double(obj.JavaMessage.getM12);
        end
        
        function set.M12(obj, m12)
            %set.M12 Set the value for property M12
            validateattributes(m12, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M12');
            
            obj.JavaMessage.setM12(m12);
        end
        
        function m03 = get.M03(obj)
            %get.M03 Get the value for property M03
            m03 = double(obj.JavaMessage.getM03);
        end
        
        function set.M03(obj, m03)
            %set.M03 Set the value for property M03
            validateattributes(m03, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'M03');
            
            obj.JavaMessage.setM03(m03);
        end
        
        function mu20 = get.Mu20(obj)
            %get.Mu20 Get the value for property Mu20
            mu20 = double(obj.JavaMessage.getMu20);
        end
        
        function set.Mu20(obj, mu20)
            %set.Mu20 Set the value for property Mu20
            validateattributes(mu20, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Mu20');
            
            obj.JavaMessage.setMu20(mu20);
        end
        
        function mu11 = get.Mu11(obj)
            %get.Mu11 Get the value for property Mu11
            mu11 = double(obj.JavaMessage.getMu11);
        end
        
        function set.Mu11(obj, mu11)
            %set.Mu11 Set the value for property Mu11
            validateattributes(mu11, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Mu11');
            
            obj.JavaMessage.setMu11(mu11);
        end
        
        function mu02 = get.Mu02(obj)
            %get.Mu02 Get the value for property Mu02
            mu02 = double(obj.JavaMessage.getMu02);
        end
        
        function set.Mu02(obj, mu02)
            %set.Mu02 Set the value for property Mu02
            validateattributes(mu02, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Mu02');
            
            obj.JavaMessage.setMu02(mu02);
        end
        
        function mu30 = get.Mu30(obj)
            %get.Mu30 Get the value for property Mu30
            mu30 = double(obj.JavaMessage.getMu30);
        end
        
        function set.Mu30(obj, mu30)
            %set.Mu30 Set the value for property Mu30
            validateattributes(mu30, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Mu30');
            
            obj.JavaMessage.setMu30(mu30);
        end
        
        function mu21 = get.Mu21(obj)
            %get.Mu21 Get the value for property Mu21
            mu21 = double(obj.JavaMessage.getMu21);
        end
        
        function set.Mu21(obj, mu21)
            %set.Mu21 Set the value for property Mu21
            validateattributes(mu21, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Mu21');
            
            obj.JavaMessage.setMu21(mu21);
        end
        
        function mu12 = get.Mu12(obj)
            %get.Mu12 Get the value for property Mu12
            mu12 = double(obj.JavaMessage.getMu12);
        end
        
        function set.Mu12(obj, mu12)
            %set.Mu12 Set the value for property Mu12
            validateattributes(mu12, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Mu12');
            
            obj.JavaMessage.setMu12(mu12);
        end
        
        function mu03 = get.Mu03(obj)
            %get.Mu03 Get the value for property Mu03
            mu03 = double(obj.JavaMessage.getMu03);
        end
        
        function set.Mu03(obj, mu03)
            %set.Mu03 Set the value for property Mu03
            validateattributes(mu03, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Mu03');
            
            obj.JavaMessage.setMu03(mu03);
        end
        
        function nu20 = get.Nu20(obj)
            %get.Nu20 Get the value for property Nu20
            nu20 = double(obj.JavaMessage.getNu20);
        end
        
        function set.Nu20(obj, nu20)
            %set.Nu20 Set the value for property Nu20
            validateattributes(nu20, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Nu20');
            
            obj.JavaMessage.setNu20(nu20);
        end
        
        function nu11 = get.Nu11(obj)
            %get.Nu11 Get the value for property Nu11
            nu11 = double(obj.JavaMessage.getNu11);
        end
        
        function set.Nu11(obj, nu11)
            %set.Nu11 Set the value for property Nu11
            validateattributes(nu11, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Nu11');
            
            obj.JavaMessage.setNu11(nu11);
        end
        
        function nu02 = get.Nu02(obj)
            %get.Nu02 Get the value for property Nu02
            nu02 = double(obj.JavaMessage.getNu02);
        end
        
        function set.Nu02(obj, nu02)
            %set.Nu02 Set the value for property Nu02
            validateattributes(nu02, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Nu02');
            
            obj.JavaMessage.setNu02(nu02);
        end
        
        function nu30 = get.Nu30(obj)
            %get.Nu30 Get the value for property Nu30
            nu30 = double(obj.JavaMessage.getNu30);
        end
        
        function set.Nu30(obj, nu30)
            %set.Nu30 Set the value for property Nu30
            validateattributes(nu30, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Nu30');
            
            obj.JavaMessage.setNu30(nu30);
        end
        
        function nu21 = get.Nu21(obj)
            %get.Nu21 Get the value for property Nu21
            nu21 = double(obj.JavaMessage.getNu21);
        end
        
        function set.Nu21(obj, nu21)
            %set.Nu21 Set the value for property Nu21
            validateattributes(nu21, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Nu21');
            
            obj.JavaMessage.setNu21(nu21);
        end
        
        function nu12 = get.Nu12(obj)
            %get.Nu12 Get the value for property Nu12
            nu12 = double(obj.JavaMessage.getNu12);
        end
        
        function set.Nu12(obj, nu12)
            %set.Nu12 Set the value for property Nu12
            validateattributes(nu12, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Nu12');
            
            obj.JavaMessage.setNu12(nu12);
        end
        
        function nu03 = get.Nu03(obj)
            %get.Nu03 Get the value for property Nu03
            nu03 = double(obj.JavaMessage.getNu03);
        end
        
        function set.Nu03(obj, nu03)
            %set.Nu03 Set the value for property Nu03
            validateattributes(nu03, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Nu03');
            
            obj.JavaMessage.setNu03(nu03);
        end
        
        function center = get.Center(obj)
            %get.Center Get the value for property Center
            if isempty(obj.Cache.Center)
                obj.Cache.Center = feval(obj.OpencvAppsPoint2DClass, obj.JavaMessage.getCenter);
            end
            center = obj.Cache.Center;
        end
        
        function set.Center(obj, center)
            %set.Center Set the value for property Center
            validateattributes(center, {obj.OpencvAppsPoint2DClass}, {'nonempty', 'scalar'}, 'Moment', 'Center');
            
            obj.JavaMessage.setCenter(center.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Center)
                obj.Cache.Center.setJavaObject(center.getJavaObject);
            end
        end
        
        function length = get.Length(obj)
            %get.Length Get the value for property Length
            length = double(obj.JavaMessage.getLength);
        end
        
        function set.Length(obj, length)
            %set.Length Set the value for property Length
            validateattributes(length, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Length');
            
            obj.JavaMessage.setLength(length);
        end
        
        function area = get.Area(obj)
            %get.Area Get the value for property Area
            area = double(obj.JavaMessage.getArea);
        end
        
        function set.Area(obj, area)
            %set.Area Set the value for property Area
            validateattributes(area, {'numeric'}, {'nonempty', 'scalar'}, 'Moment', 'Area');
            
            obj.JavaMessage.setArea(area);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Center = [];
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
            cpObj.M00 = obj.M00;
            cpObj.M10 = obj.M10;
            cpObj.M01 = obj.M01;
            cpObj.M20 = obj.M20;
            cpObj.M11 = obj.M11;
            cpObj.M02 = obj.M02;
            cpObj.M30 = obj.M30;
            cpObj.M21 = obj.M21;
            cpObj.M12 = obj.M12;
            cpObj.M03 = obj.M03;
            cpObj.Mu20 = obj.Mu20;
            cpObj.Mu11 = obj.Mu11;
            cpObj.Mu02 = obj.Mu02;
            cpObj.Mu30 = obj.Mu30;
            cpObj.Mu21 = obj.Mu21;
            cpObj.Mu12 = obj.Mu12;
            cpObj.Mu03 = obj.Mu03;
            cpObj.Nu20 = obj.Nu20;
            cpObj.Nu11 = obj.Nu11;
            cpObj.Nu02 = obj.Nu02;
            cpObj.Nu30 = obj.Nu30;
            cpObj.Nu21 = obj.Nu21;
            cpObj.Nu12 = obj.Nu12;
            cpObj.Nu03 = obj.Nu03;
            cpObj.Length = obj.Length;
            cpObj.Area = obj.Area;
            
            % Recursively copy compound properties
            cpObj.Center = copy(obj.Center);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.M00 = strObj.M00;
            obj.M10 = strObj.M10;
            obj.M01 = strObj.M01;
            obj.M20 = strObj.M20;
            obj.M11 = strObj.M11;
            obj.M02 = strObj.M02;
            obj.M30 = strObj.M30;
            obj.M21 = strObj.M21;
            obj.M12 = strObj.M12;
            obj.M03 = strObj.M03;
            obj.Mu20 = strObj.Mu20;
            obj.Mu11 = strObj.Mu11;
            obj.Mu02 = strObj.Mu02;
            obj.Mu30 = strObj.Mu30;
            obj.Mu21 = strObj.Mu21;
            obj.Mu12 = strObj.Mu12;
            obj.Mu03 = strObj.Mu03;
            obj.Nu20 = strObj.Nu20;
            obj.Nu11 = strObj.Nu11;
            obj.Nu02 = strObj.Nu02;
            obj.Nu30 = strObj.Nu30;
            obj.Nu21 = strObj.Nu21;
            obj.Nu12 = strObj.Nu12;
            obj.Nu03 = strObj.Nu03;
            obj.Length = strObj.Length;
            obj.Area = strObj.Area;
            obj.Center = feval([obj.OpencvAppsPoint2DClass '.loadobj'], strObj.Center);
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
            
            strObj.M00 = obj.M00;
            strObj.M10 = obj.M10;
            strObj.M01 = obj.M01;
            strObj.M20 = obj.M20;
            strObj.M11 = obj.M11;
            strObj.M02 = obj.M02;
            strObj.M30 = obj.M30;
            strObj.M21 = obj.M21;
            strObj.M12 = obj.M12;
            strObj.M03 = obj.M03;
            strObj.Mu20 = obj.Mu20;
            strObj.Mu11 = obj.Mu11;
            strObj.Mu02 = obj.Mu02;
            strObj.Mu30 = obj.Mu30;
            strObj.Mu21 = obj.Mu21;
            strObj.Mu12 = obj.Mu12;
            strObj.Mu03 = obj.Mu03;
            strObj.Nu20 = obj.Nu20;
            strObj.Nu11 = obj.Nu11;
            strObj.Nu02 = obj.Nu02;
            strObj.Nu30 = obj.Nu30;
            strObj.Nu21 = obj.Nu21;
            strObj.Nu12 = obj.Nu12;
            strObj.Nu03 = obj.Nu03;
            strObj.Length = obj.Length;
            strObj.Area = obj.Area;
            strObj.Center = saveobj(obj.Center);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.opencv_apps.Moment.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.opencv_apps.Moment;
            obj.reload(strObj);
        end
    end
end
