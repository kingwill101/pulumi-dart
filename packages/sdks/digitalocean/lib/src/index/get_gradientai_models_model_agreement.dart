// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiModelsModelAgreement {
  /// Description of the agreement
  final pulumi.Input<String>? description;
  /// Name of the agreement
  final pulumi.Input<String>? name;
  /// URL of the agreement
  final pulumi.Input<String>? url;
  /// UUID of the agreement
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGradientaiModelsModelAgreement].
  /// [description] Description of the agreement
  /// [name] Name of the agreement
  /// [url] URL of the agreement
  /// [uuid] UUID of the agreement
  GetGradientaiModelsModelAgreement({
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

  factory GetGradientaiModelsModelAgreement.fromMap(Map<String, dynamic> map) {
    return GetGradientaiModelsModelAgreement(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

