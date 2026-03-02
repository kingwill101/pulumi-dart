// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpingress_path_networking_k8s_io_v1beta1.dart';

/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
class HTTPIngressRuleValueNetworkingK8sIoV1beta1 {
  /// A collection of paths that map requests to backends.
  final pulumi.Input<List<HTTPIngressPathNetworkingK8sIoV1beta1>> paths;

  /// Creates a new [HTTPIngressRuleValueNetworkingK8sIoV1beta1].
  /// [paths] A collection of paths that map requests to backends.
  HTTPIngressRuleValueNetworkingK8sIoV1beta1({
    required this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': pulumi.Input.mapInputValue<List<HTTPIngressPathNetworkingK8sIoV1beta1>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<HTTPIngressPathNetworkingK8sIoV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HTTPIngressRuleValueNetworkingK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return HTTPIngressRuleValueNetworkingK8sIoV1beta1(
      paths: (pulumi.Input.decodeList<HTTPIngressPathNetworkingK8sIoV1beta1>(map['paths'], (value) => HTTPIngressPathNetworkingK8sIoV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

