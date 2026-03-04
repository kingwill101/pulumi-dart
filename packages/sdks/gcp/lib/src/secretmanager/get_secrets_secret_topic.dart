// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsSecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to.
  final pulumi.Input<String> name;

  /// Creates a new [GetSecretsSecretTopic].
  /// [name] The resource name of the Pub/Sub topic that will be published to.
  GetSecretsSecretTopic({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetSecretsSecretTopic.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretTopic(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
