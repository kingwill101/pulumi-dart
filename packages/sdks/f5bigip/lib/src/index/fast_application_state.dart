// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FastApplication resources.
class FastApplicationState {
  /// A FAST application name.
  ///
  ///
  ///
  /// * `FAST documentation` - https://clouddocs.f5.com/products/extensions/f5-appsvcs-templates/latest/
  final pulumi.Input<String>? application;
  /// Path/Filename of Declarative FAST JSON which is a json file used with builtin ```file``` function
  final pulumi.Input<String>? fastJson;
  /// Name of installed FAST template used to create FAST application. This parameter is required when creating new resource.
  final pulumi.Input<String>? template;
  /// A FAST tenant name on which you want to manage application.
  final pulumi.Input<String>? tenant;

  /// Creates a new [FastApplicationState].
  /// [application] A FAST application name.
  /// [fastJson] Path/Filename of Declarative FAST JSON which is a json file used with builtin ```file``` function
  /// [template] Name of installed FAST template used to create FAST application. This parameter is required when creating new resource.
  /// [tenant] A FAST tenant name on which you want to manage application.
  FastApplicationState({
    this.application,
    this.fastJson,
    this.template,
    this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': ?application,
      'fastJson': ?fastJson,
      'template': ?template,
      'tenant': ?tenant,
    };
  }

  factory FastApplicationState.fromMap(Map<String, dynamic> map) {
    return FastApplicationState(
      application: map['application'] == null ? null : (map['application']! as String).input(),
      fastJson: map['fastJson'] == null ? null : (map['fastJson']! as String).input(),
      template: map['template'] == null ? null : (map['template']! as String).input(),
      tenant: map['tenant'] == null ? null : (map['tenant']! as String).input(),
    );
  }
}

