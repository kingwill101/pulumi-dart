// ignore_for_file: unused_element, unnecessary_cast


class URLMapDefaultRouteActionUrlRewrite {
  /// Prior to forwarding the request to the selected service, the request's host header is replaced
  /// with contents of hostRewrite.
  /// The value must be between 1 and 255 characters.
  final String? hostRewrite;
  /// Prior to forwarding the request to the selected backend service, the matching portion of the
  /// request's path is replaced by pathPrefixRewrite.
  /// The value must be between 1 and 1024 characters.
  final String? pathPrefixRewrite;

  /// Creates a new [URLMapDefaultRouteActionUrlRewrite].
  /// [hostRewrite] Prior to forwarding the request to the selected service, the request's host header is replaced
  /// [pathPrefixRewrite] Prior to forwarding the request to the selected backend service, the matching portion of the
  URLMapDefaultRouteActionUrlRewrite({
    this.hostRewrite,
    this.pathPrefixRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRewrite': ?hostRewrite,
      'pathPrefixRewrite': ?pathPrefixRewrite,
    };
  }

  factory URLMapDefaultRouteActionUrlRewrite.fromMap(Map<String, dynamic> map) {
    return URLMapDefaultRouteActionUrlRewrite(
      hostRewrite: map['hostRewrite'] == null ? null : map['hostRewrite'] as String,
      pathPrefixRewrite: map['pathPrefixRewrite'] == null ? null : map['pathPrefixRewrite'] as String,
    );
  }
}

