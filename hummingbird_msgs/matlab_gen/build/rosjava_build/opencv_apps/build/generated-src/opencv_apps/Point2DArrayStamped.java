package opencv_apps;

public interface Point2DArrayStamped extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "opencv_apps/Point2DArrayStamped";
  static final java.lang.String _DEFINITION = "Header header\nPoint2D[] points\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  std_msgs.Header getHeader();
  void setHeader(std_msgs.Header value);
  java.util.List<opencv_apps.Point2D> getPoints();
  void setPoints(java.util.List<opencv_apps.Point2D> value);
}
