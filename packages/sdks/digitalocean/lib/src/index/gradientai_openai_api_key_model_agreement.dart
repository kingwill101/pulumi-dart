// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiOpenaiApiKeyModelAgreement {
  /// Description of the agreement
  final pulumi.Input<String>? description;

  /// Name of the agreement
  final pulumi.Input<String>? name;

  /// URL of the agreement
  final pulumi.Input<String>? url;

  /// UUID of the agreement
  final pulumi.Input<String>? uuid;

  /// Creates a new [GradientaiOpenaiApiKeyModelAgreement].
  /// [description] Description of the agreement
  /// [name] Name of the agreement
  /// [url] URL of the agreement
  /// [uuid] UUID of the agreement
  GradientaiOpenaiApiKeyModelAgreement({
    this.description,
    this.name,
    this.url,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'url': ?url,
      'uuid': ?uuid,
    };
  }

  factory GradientaiOpenaiApiKeyModelAgreement.fromMap(
    Map<String, dynamic> map,
  ) {
    return GradientaiOpenaiApiKeyModelAgreement(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      url: (() {
        final guardedValue = map['url'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uuid: (() {
        final guardedValue = map['uuid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
