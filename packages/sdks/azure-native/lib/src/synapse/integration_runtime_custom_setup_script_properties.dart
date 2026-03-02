// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secure_string.dart';

/// Custom setup script properties for a managed dedicated integration runtime.
class IntegrationRuntimeCustomSetupScriptProperties {
  /// The URI of the Azure blob container that contains the custom setup script.
  final pulumi.Input<String>? blobContainerUri;
  /// The SAS token of the Azure blob container.
  final pulumi.Input<SecureString>? sasToken;

  /// Creates a new [IntegrationRuntimeCustomSetupScriptProperties].
  /// [blobContainerUri] The URI of the Azure blob container that contains the custom setup script.
  /// [sasToken] The SAS token of the Azure blob container.
  IntegrationRuntimeCustomSetupScriptProperties({
    this.blobContainerUri,
    this.sasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobContainerUri': ?blobContainerUri,
      'sasToken': ?pulumi.Input.mapOptionalInputValue<SecureString, Map<String, dynamic>>(sasToken, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeCustomSetupScriptProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeCustomSetupScriptProperties(
      blobContainerUri: map['blobContainerUri'] == null ? null : (map['blobContainerUri']! as String).input(),
      sasToken: map['sasToken'] == null ? null : (SecureString.fromMap((map['sasToken']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

