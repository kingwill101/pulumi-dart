// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  final pulumi.Input<String> architecture;
  final pulumi.Input<String> created;
  final pulumi.Input<String> deprecated;
  final pulumi.Input<String> description;
  final pulumi.Input<int> id;
  final pulumi.Input<Map<String, String>> labels;
  final pulumi.Input<String> name;
  final pulumi.Input<String> osFlavor;
  final pulumi.Input<String> osVersion;
  final pulumi.Input<bool> rapidDeploy;
  final pulumi.Input<String>? selector;
  final pulumi.Input<String> type;

  /// Creates a new [GetImagesImage].
  /// [architecture] Required.
  /// [created] Required.
  /// [deprecated] Required.
  /// [description] Required.
  /// [id] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [osFlavor] Required.
  /// [osVersion] Required.
  /// [rapidDeploy] Required.
  /// [selector] Optional.
  /// [type] Required.
  const GetImagesImage({
    required this.architecture,
    required this.created,
    required this.deprecated,
    required this.description,
    required this.id,
    required this.labels,
    required this.name,
    required this.osFlavor,
    required this.osVersion,
    required this.rapidDeploy,
    this.selector,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'created': created,
      'deprecated': deprecated,
      'description': description,
      'id': id,
      'labels': labels,
      'name': name,
      'osFlavor': osFlavor,
      'osVersion': osVersion,
      'rapidDeploy': rapidDeploy,
      'selector': ?selector,
      'type': type,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      created: pulumi.Input.fromValue(map['created'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      osFlavor: pulumi.Input.fromValue(map['osFlavor'] as String),
      osVersion: pulumi.Input.fromValue(map['osVersion'] as String),
      rapidDeploy: pulumi.Input.fromValue(map['rapidDeploy'] as bool),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

