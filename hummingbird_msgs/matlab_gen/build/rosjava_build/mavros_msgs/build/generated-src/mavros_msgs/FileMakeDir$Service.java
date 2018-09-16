package mavros_msgs;

public interface FileMakeDir$Service extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros_msgs/FileMakeDir$Service";
  static final java.lang.String _DEFINITION = "# FTP::MakeDir\n#\n# :success:\tindicates success end of request\n# :r_errno:\tremote errno if applicapable\n\nstring dir_path\n---\nbool success\nint32 r_errno\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
}
