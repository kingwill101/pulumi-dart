// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ingress_backend_patch.dart';

/// HTTPIngressPath associates a path with a backend. Incoming urls matching the path are forwarded to the backend.
class HTTPIngressPathPatch {
  /// backend defines the referenced service endpoint to which the traffic will be forwarded to.
  final pulumi.Input<IngressBackendPatch>? backend;
  /// path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value "Exact" or "Prefix".
  final pulumi.Input<String>? path;
  /// pathType determines the interpretation of the path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  /// done on a path element by element basis. A path element refers is the
  /// list of labels in the path split by the '/' separator. A request is a
  /// match for path p if every p is an element-wise prefix of p of the
  /// request path. Note that if the last element of the path is a substring
  /// of the last element in request path, it is not a match (e.g. /foo/bar
  /// matches /foo/bar/baz, but does not match /foo/barbaz).
  /// * ImplementationSpecific: Interpretation of the Path matching is up to
  /// the IngressClass. Implementations can treat this as a separate PathType
  /// or treat it identically to Prefix or Exact path types.
  /// Implementations are required to support all path types.
  final pulumi.Input<String>? pathType;

  /// Creates a new [HTTPIngressPathPatch].
  /// [backend] backend defines the referenced service endpoint to which the traffic will be forwarded to.
  /// [path] path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional "path" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value "Exact" or "Prefix".
  /// [pathType] pathType determines the interpretation of the path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  const HTTPIngressPathPatch({
    this.backend,
    this.path,
    this.pathType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backend': ?pulumi.Input.mapOptionalInputValue<IngressBackendPatch, Map<String, dynamic>>(backend, (value) => value.toMap()),
      'path': ?path,
      'pathType': ?pathType,
    };
  }

  factory HTTPIngressPathPatch.fromMap(Map<String, dynamic> map) {
    return HTTPIngressPathPatch(
      backend: (() { final guardedValue = map['backend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngressBackendPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathType: (() { final guardedValue = map['pathType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

