package mavros_msgs;

public interface SetMavFrameRequest extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros_msgs/SetMavFrameRequest";
  static final java.lang.String _DEFINITION = "# Set MAV_FRAME for setpoints\n\n# [[[cog:\n# from pymavlink.dialects.v20 import common\n#\n# def decl_enum(ename, pfx=\'\', bsz=8):\n#     enum = sorted(common.enums[ename].items())\n#     enum.pop() # remove ENUM_END\n#\n#     cog.outl(\"# \" + ename)\n#     for k, e in enum:\n#         sn = e.name[len(ename) + 1:]\n#         l = \"uint{bsz} {pfx}{sn} = {k}\".format(**locals())\n#         if e.description:\n#             l += \' \' * (40 - len(l)) + \' # \' + e.description\n#         cog.outl(l)\n#\n# decl_enum(\'MAV_FRAME\', \'FRAME_\')\n# ]]]\n# MAV_FRAME\nuint8 FRAME_GLOBAL = 0                   # Global coordinate frame, WGS84 coordinate system. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)\nuint8 FRAME_LOCAL_NED = 1                # Local coordinate frame, Z-up (x: north, y: east, z: down).\nuint8 FRAME_MISSION = 2                  # NOT a coordinate frame, indicates a mission command.\nuint8 FRAME_GLOBAL_RELATIVE_ALT = 3      # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location.\nuint8 FRAME_LOCAL_ENU = 4                # Local coordinate frame, Z-down (x: east, y: north, z: up)\nuint8 FRAME_GLOBAL_INT = 5               # Global coordinate frame, WGS84 coordinate system. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)\nuint8 FRAME_GLOBAL_RELATIVE_ALT_INT = 6  # Global coordinate frame, WGS84 coordinate system, relative altitude over ground with respect to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location.\nuint8 FRAME_LOCAL_OFFSET_NED = 7         # Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position.\nuint8 FRAME_BODY_NED = 8                 # Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right.\nuint8 FRAME_BODY_OFFSET_NED = 9          # Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east.\nuint8 FRAME_GLOBAL_TERRAIN_ALT = 10      # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model.\nuint8 FRAME_GLOBAL_TERRAIN_ALT_INT = 11  # Global coordinate frame with above terrain level altitude. WGS84 coordinate system, relative altitude over terrain with respect to the waypoint coordinate. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model.\n# [[[end]]] (checksum: e1f224cdf07c92a4457f1a880abdc0ff)\n\nuint8 mav_frame\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  static final byte FRAME_GLOBAL = 0;
  static final byte FRAME_LOCAL_NED = 1;
  static final byte FRAME_MISSION = 2;
  static final byte FRAME_GLOBAL_RELATIVE_ALT = 3;
  static final byte FRAME_LOCAL_ENU = 4;
  static final byte FRAME_GLOBAL_INT = 5;
  static final byte FRAME_GLOBAL_RELATIVE_ALT_INT = 6;
  static final byte FRAME_LOCAL_OFFSET_NED = 7;
  static final byte FRAME_BODY_NED = 8;
  static final byte FRAME_BODY_OFFSET_NED = 9;
  static final byte FRAME_GLOBAL_TERRAIN_ALT = 10;
  static final byte FRAME_GLOBAL_TERRAIN_ALT_INT = 11;
  byte getMavFrame();
  void setMavFrame(byte value);
}
