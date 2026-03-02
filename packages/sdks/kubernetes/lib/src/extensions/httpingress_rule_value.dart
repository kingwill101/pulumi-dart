// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'httpingress_path.dart';

/// HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example: http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to RFC 3986, this resource will be used to match against everything after the last '/' and before the first '?' or '#'.
class HTTPIngressRuleValue {
  /// A collection of paths that map requests to backends.
  final pulumi.Input<List<HTTPIngressPath>> paths;

  /// Creates a new [HTTPIngressRuleValue].
  /// [paths] A collection of paths that map requests to backends.
  HTTPIngressRuleValue({
    required this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paths': pulumi.Input.mapInputValue<List<HTTPIngressPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<HTTPIngressPath, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HTTPIngressRuleValue.fromMap(Map<String, dynamic> map) {
    return HTTPIngressRuleValue(
      paths: (pulumi.Input.decodeList<HTTPIngressPath>(map['paths'], (value) => HTTPIngressPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

