// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_backend_networking_k8s_io_v1beta1.dart';

/// HTTPIngressPath associates a path regex with a backend. Incoming urls matching the path are forwarded to the backend.
class HTTPIngressPathNetworkingK8sIoV1beta1 {
  /// Backend defines the referenced service endpoint to which the traffic will be forwarded to.
  final pulumi.Input<IngressBackendNetworkingK8sIoV1beta1> backend;
  /// Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.
  final pulumi.Input<String?>? path;
  /// PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  /// done on a path element by element basis. A path element refers is the
  /// list of labels in the path split by the '/' separator. A request is a
  /// match for path p if every p is an element-wise prefix of p of the
  /// request path. Note that if the last element of the path is a substring
  /// of the last element in request path, it is not a match (e.g. /foo/bar
  /// matches /foo/bar/baz, but does not match /foo/barbaz).
  /// * ImplementationSpecific: Interpretation of the Path matching is up to
  /// the IngressClass. Implementations can treat this as a separate PathType
  /// or treat it identically to Prefix or Exact path types.
  /// Implementations are required to support all path types. Defaults to ImplementationSpecific.
  final pulumi.Input<String?>? pathType;

  /// Creates a new [HTTPIngressPathNetworkingK8sIoV1beta1].
  /// [backend] Backend defines the referenced service endpoint to which the traffic will be forwarded to.
  /// [path] Path is an extended POSIX regex as defined by IEEE Std 1003.1, (i.e this follows the egrep/unix syntax, not the perl syntax) matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/'. If unspecified, the path defaults to a catch all sending traffic to the backend.
  /// [pathType] PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  const HTTPIngressPathNetworkingK8sIoV1beta1({
    required this.backend,
    this.path,
    this.pathType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': pulumi.Input.mapInputValue<IngressBackendNetworkingK8sIoV1beta1, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'path': ?path,
      'pathType': ?pathType,
    };
  }

  factory HTTPIngressPathNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return HTTPIngressPathNetworkingK8sIoV1beta1(
      backend: pulumi.Input.fromValue(IngressBackendNetworkingK8sIoV1beta1.fromMap((map['backend']! as Map).cast<String, dynamic>())),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathType: (() { final guardedValue = map['pathType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
