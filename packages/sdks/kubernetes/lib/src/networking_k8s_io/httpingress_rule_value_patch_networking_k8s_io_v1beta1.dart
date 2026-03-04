// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpingress_path_patch_networking_k8s_io_v1beta1.dart';

/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://&lt;host&gt;/&lt;path&gt;?&lt;searchpart&gt; -&gt; backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
class HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1 {
  /// A collection of paths that map requests to backends.
  final pulumi.Input<List<HTTPIngressPathPatchNetworkingK8sIoV1beta1>>? paths;

  /// Creates a new [HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1].
  /// [paths] A collection of paths that map requests to backends.
  HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1({this.paths});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths':
          ?pulumi.Input.mapOptionalInputValue<
            List<HTTPIngressPathPatchNetworkingK8sIoV1beta1>,
            List<Map<String, dynamic>>
          >(
            paths,
            (value) =>
                pulumi.Input.encodeList<
                  HTTPIngressPathPatchNetworkingK8sIoV1beta1,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HTTPIngressRuleValuePatchNetworkingK8sIoV1beta1(
      paths: (() {
        final guardedValue = map['paths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HTTPIngressPathPatchNetworkingK8sIoV1beta1>(
            guardedValue,
            (value) => HTTPIngressPathPatchNetworkingK8sIoV1beta1.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
