package mavros_msgs;

public interface SetMavFrameResponse extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros_msgs/SetMavFrameResponse";
  static final java.lang.String _DEFINITION = "bool success";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
  boolean getSuccess();
  void setSuccess(boolean value);
}
