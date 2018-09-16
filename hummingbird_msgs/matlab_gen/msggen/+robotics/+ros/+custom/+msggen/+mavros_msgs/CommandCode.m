classdef CommandCode < robotics.ros.Message
    %CommandCode MATLAB implementation of mavros_msgs/CommandCode
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'mavros_msgs/CommandCode' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = '03a2b9eca2a527279a43b976fb73a9f3' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant)
        AIRFRAMECONFIGURATION = uint16(2520)
        ARMAUTHORIZATIONREQUEST = uint16(3001)
        COMPONENTARMDISARM = uint16(400)
        CONDITIONDELAY = uint16(112)
        CONDITIONCHANGEALT = uint16(113)
        CONDITIONDISTANCE = uint16(114)
        CONDITIONYAW = uint16(115)
        CONDITIONLAST = uint16(159)
        CONDITIONGATE = uint16(4501)
        CONTROLHIGHLATENCY = uint16(2600)
        DOFOLLOW = uint16(32)
        DOFOLLOWREPOSITION = uint16(33)
        DOSETMODE = uint16(176)
        DOJUMP = uint16(177)
        DOCHANGESPEED = uint16(178)
        DOSETHOME = uint16(179)
        DOSETPARAMETER = uint16(180)
        DOSETRELAY = uint16(181)
        DOREPEATRELAY = uint16(182)
        DOSETSERVO = uint16(183)
        DOREPEATSERVO = uint16(184)
        DOFLIGHTTERMINATION = uint16(185)
        DOCHANGEALTITUDE = uint16(186)
        DOLANDSTART = uint16(189)
        DORALLYLAND = uint16(190)
        DOGOAROUND = uint16(191)
        DOREPOSITION = uint16(192)
        DOPAUSECONTINUE = uint16(193)
        DOSETREVERSE = uint16(194)
        DOSETROILOCATION = uint16(195)
        DOSETROIWPNEXTOFFSET = uint16(196)
        DOSETROINONE = uint16(197)
        DOCONTROLVIDEO = uint16(200)
        DOMOUNTCONFIGURE = uint16(204)
        DOMOUNTCONTROL = uint16(205)
        DOSETCAMTRIGGDIST = uint16(206)
        DOFENCEENABLE = uint16(207)
        DOPARACHUTE = uint16(208)
        DOMOTORTEST = uint16(209)
        DOINVERTEDFLIGHT = uint16(210)
        DOSETCAMTRIGGINTERVAL = uint16(214)
        DOMOUNTCONTROLQUAT = uint16(220)
        DOGUIDEDMASTER = uint16(221)
        DOGUIDEDLIMITS = uint16(222)
        DOENGINECONTROL = uint16(223)
        DOLAST = uint16(240)
        DOTRIGGERCONTROL = uint16(2003)
        DOVTOLTRANSITION = uint16(3000)
        GETHOMEPOSITION = uint16(410)
        GETMESSAGEINTERVAL = uint16(510)
        IMAGESTARTCAPTURE = uint16(2000)
        IMAGESTOPCAPTURE = uint16(2001)
        LOGGINGSTART = uint16(2510)
        LOGGINGSTOP = uint16(2511)
        MISSIONSTART = uint16(300)
        NAVWAYPOINT = uint16(16)
        NAVLOITERUNLIM = uint16(17)
        NAVLOITERTURNS = uint16(18)
        NAVLOITERTIME = uint16(19)
        NAVRETURNTOLAUNCH = uint16(20)
        NAVLAND = uint16(21)
        NAVTAKEOFF = uint16(22)
        NAVLANDLOCAL = uint16(23)
        NAVTAKEOFFLOCAL = uint16(24)
        NAVFOLLOW = uint16(25)
        NAVCONTINUEANDCHANGEALT = uint16(30)
        NAVLOITERTOALT = uint16(31)
        NAVPATHPLANNING = uint16(81)
        NAVSPLINEWAYPOINT = uint16(82)
        NAVVTOLTAKEOFF = uint16(84)
        NAVVTOLLAND = uint16(85)
        NAVGUIDEDENABLE = uint16(92)
        NAVDELAY = uint16(93)
        NAVPAYLOADPLACE = uint16(94)
        NAVLAST = uint16(95)
        NAVSETYAWSPEED = uint16(213)
        NAVFENCERETURNPOINT = uint16(5000)
        NAVFENCEPOLYGONVERTEXINCLUSION = uint16(5001)
        NAVFENCEPOLYGONVERTEXEXCLUSION = uint16(5002)
        NAVFENCECIRCLEINCLUSION = uint16(5003)
        NAVFENCECIRCLEEXCLUSION = uint16(5004)
        NAVRALLYPOINT = uint16(5100)
        OVERRIDEGOTO = uint16(252)
        PANORAMACREATE = uint16(2800)
        PAYLOADPREPAREDEPLOY = uint16(30001)
        PAYLOADCONTROLDEPLOY = uint16(30002)
        PREFLIGHTCALIBRATION = uint16(241)
        PREFLIGHTSETSENSOROFFSETS = uint16(242)
        PREFLIGHTUAVCAN = uint16(243)
        PREFLIGHTSTORAGE = uint16(245)
        PREFLIGHTREBOOTSHUTDOWN = uint16(246)
        REQUESTPROTOCOLVERSION = uint16(519)
        REQUESTAUTOPILOTCAPABILITIES = uint16(520)
        REQUESTCAMERAINFORMATION = uint16(521)
        REQUESTCAMERASETTINGS = uint16(522)
        REQUESTSTORAGEINFORMATION = uint16(525)
        REQUESTCAMERACAPTURESTATUS = uint16(527)
        REQUESTFLIGHTINFORMATION = uint16(528)
        REQUESTCAMERAIMAGECAPTURE = uint16(2002)
        REQUESTVIDEOSTREAMINFORMATION = uint16(2504)
        RESETCAMERASETTINGS = uint16(529)
        SETMESSAGEINTERVAL = uint16(511)
        SETCAMERAMODE = uint16(530)
        SETGUIDEDSUBMODESTANDARD = uint16(4000)
        SETGUIDEDSUBMODECIRCLE = uint16(4001)
        STARTRXPAIR = uint16(500)
        STORAGEFORMAT = uint16(526)
        UAVCANGETNODEINFO = uint16(5200)
        VIDEOSTARTCAPTURE = uint16(2500)
        VIDEOSTOPCAPTURE = uint16(2501)
        VIDEOSTARTSTREAMING = uint16(2502)
        VIDEOSTOPSTREAMING = uint16(2503)
    end
    
    properties (Constant, Hidden)
        PropertyList = {} % List of non-constant message properties
        ROSPropertyList = {} % List of non-constant ROS message properties
    end
    
    methods
        function obj = CommandCode(msg)
            %CommandCode Construct the message object CommandCode
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
    end
    
    methods (Access = protected)
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
        end
        
        function reload(~, ~)
            %reload Called by loadobj to assign properties
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
            
            % Add placeholder structure
            strObj = struct;
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.mavros_msgs.CommandCode.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.mavros_msgs.CommandCode;
            obj.reload(strObj);
        end
    end
end