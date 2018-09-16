package opencv_apps;

public interface Point2DArray extends org.ros.internal.message.Message {
  static final java.lang.String _TYPE = "opencv_apps/Point2DArray";
  static final java.lang.String _DEFINITION = "Point2D[] points\n";
  static final boolean _IS_SERVICE = false;
  static final boolean _IS_ACTION = false;
  java.util.List<opencv_apps.Point2D> getPoints();
  void setPoints(java.util.List<opencv_apps.Point2D> value);
}
