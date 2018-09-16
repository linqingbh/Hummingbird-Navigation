package mavros_msgs;

public interface ParamPull$Service extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros_msgs/ParamPull$Service";
  static final java.lang.String _DEFINITION = "# Request parameters from device\n#\n# Returns success status and param_recived count\n\nbool force_pull\n---\nbool success\nuint32 param_received\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
}
