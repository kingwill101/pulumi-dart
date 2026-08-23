// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecIngressRuleComponent {
  /// The name of the component.
  final pulumi.Input<String>? name;
  /// An optional flag to preserve the path that is forwarded to the backend service.
  final pulumi.Input<bool>? preservePathPrefix;
  final pulumi.Input<String>? rewrite;

  /// Creates a new [GetAppSpecIngressRuleComponent].
  /// [name] The name of the component.
  /// [preservePathPrefix] An optional flag to preserve the path that is forwarded to the backend service.
  /// [rewrite] Optional.
  const GetAppSpecIngressRuleComponent({
    this.name,
    this.preservePathPrefix,
    this.rewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'preservePathPrefix': ?preservePathPrefix,
      'rewrite': ?rewrite,
    };
  }

  factory GetAppSpecIngressRuleComponent.fromMap(Map<String, dynamic> map) {
    return GetAppSpecIngressRuleComponent(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preservePathPrefix: (() { final guardedValue = map['preservePathPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rewrite: (() { final guardedValue = map['rewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
