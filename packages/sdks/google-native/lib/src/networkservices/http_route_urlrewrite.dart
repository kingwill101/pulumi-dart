// ignore_for_file: unused_element, unnecessary_cast


/// The specification for modifying the URL of the request, prior to forwarding the request to the destination.
class HttpRouteURLRewrite {
  /// Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  final String? hostRewrite;
  /// Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  final String? pathPrefixRewrite;

  /// Creates a new [HttpRouteURLRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected destination, the requests host header is replaced by this value.
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected destination, the matching portion of the requests path is replaced by this value.
  HttpRouteURLRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
    };
  }

  factory HttpRouteURLRewrite.fromMap(Map<String, dynamic> map) {
    return HttpRouteURLRewrite(
      hostRewrite: map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null ? null : map['pathPrefixRewrite'] as String,
    );
  }
}

