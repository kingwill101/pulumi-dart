// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpingress_path_patch.dart';

/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://&lt;host&gt;/&lt;path&gt;?&lt;searchpart&gt; -&gt; backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
class HTTPIngressRuleValuePatch {
  /// paths is a collection of paths that map requests to backends.
  final pulumi.Input<List<HTTPIngressPathPatch>?>? paths;

  /// Creates a new [HTTPIngressRuleValuePatch].
  /// [paths] paths is a collection of paths that map requests to backends.
  const HTTPIngressRuleValuePatch({
    this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': ?pulumi.Input.mapOptionalInputValue<List<HTTPIngressPathPatch>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<HTTPIngressPathPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HTTPIngressRuleValuePatch.fromMap(Map<String, dynamic> map) {
    return HTTPIngressRuleValuePatch(
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<HTTPIngressPathPatch>(guardedValue, (value) => HTTPIngressPathPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
