package mavros_msgs;

public interface FileRead$Service extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "mavros_msgs/FileRead$Service";
  static final java.lang.String _DEFINITION = "# FTP::Read\n#\n# Call FTP::Open first.\n# :success:\tindicates success end of request\n# :r_errno:\tremote errno if applicapable\n\nstring file_path\nuint64 offset\nuint64 size\n---\nuint8[] data\nbool success\nint32 r_errno\n";
  static final boolean _IS_SERVICE = true;
  static final boolean _IS_ACTION = false;
}
