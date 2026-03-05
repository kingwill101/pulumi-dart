// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionalSecretsSecretTopic {
  /// The resource name of the Pub/Sub topic that will be published to.
  final pulumi.Input<String> name;

  /// Creates a new [GetRegionalSecretsSecretTopic].
  /// [name] The resource name of the Pub/Sub topic that will be published to.
  GetRegionalSecretsSecretTopic({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRegionalSecretsSecretTopic.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsSecretTopic(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

