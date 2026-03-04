// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecIngressRuleComponent {
  /// The name of the component to route to.
  final pulumi.Input<String>? name;

  /// An optional boolean flag to preserve the path that is forwarded to the backend service. By default, the HTTP request path will be trimmed from the left when forwarded to the component.
  final pulumi.Input<bool>? preservePathPrefix;

  /// An optional field that will rewrite the path of the component to be what is specified here. This is mutually exclusive with `preserve_path_prefix`.
  final pulumi.Input<String>? rewrite;

  /// Creates a new [AppSpecIngressRuleComponent].
  /// [name] The name of the component to route to.
  /// [preservePathPrefix] An optional boolean flag to preserve the path that is forwarded to the backend service. By default, the HTTP request path will be trimmed from the left when forwarded to the component.
  /// [rewrite] An optional field that will rewrite the path of the component to be what is specified here. This is mutually exclusive with `preserve_path_prefix`.
  AppSpecIngressRuleComponent({
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

  factory AppSpecIngressRuleComponent.fromMap(Map<String, dynamic> map) {
    return AppSpecIngressRuleComponent(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preservePathPrefix: (() {
        final guardedValue = map['preservePathPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rewrite: (() {
        final guardedValue = map['rewrite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
