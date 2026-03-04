// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_config_x509_config_additional_extension_object_id.dart';

class AuthorityConfigX509ConfigAdditionalExtension {
  /// Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// handle this extension, the client should consider this to be an error).
  final pulumi.Input<bool> critical;

  /// Describes values that are relevant in a CA certificate.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigX509ConfigAdditionalExtensionObjectId>
  objectId;

  /// The value of this X.509 extension. A base64-encoded string.
  final pulumi.Input<String> value;

  /// Creates a new [AuthorityConfigX509ConfigAdditionalExtension].
  /// [critical] Indicates whether or not this extension is critical (i.e., if the client does not know how to
  /// [objectId] Describes values that are relevant in a CA certificate.
  /// [value] The value of this X.509 extension. A base64-encoded string.
  AuthorityConfigX509ConfigAdditionalExtension({
    required this.critical,
    required this.objectId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'critical': critical,
      'objectId':
          pulumi.Input.mapInputValue<
            AuthorityConfigX509ConfigAdditionalExtensionObjectId,
            Map<String, dynamic>
          >(objectId, (value) => value.toMap()),
      'value': value,
    };
  }

  factory AuthorityConfigX509ConfigAdditionalExtension.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthorityConfigX509ConfigAdditionalExtension(
      critical: pulumi.Input.fromValue(map['critical'] as bool),
      objectId: pulumi.Input.fromValue(
        AuthorityConfigX509ConfigAdditionalExtensionObjectId.fromMap(
          (map['objectId']! as Map).cast<String, dynamic>(),
        ),
      ),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
