// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'awsoidcconfiguration.dart';
import 'azure_oidcconfiguration.dart';
import 'gcpoidcconfiguration.dart';

class OperationContextOIDC {
  /// AWS-specific OIDC configuration.
  final pulumi.Input<AWSOIDCConfiguration>? aws;
  /// Azure-specific OIDC configuration.
  final pulumi.Input<AzureOIDCConfiguration>? azure;
  /// GCP-specific OIDC configuration.
  final pulumi.Input<GCPOIDCConfiguration>? gcp;

  /// Creates a new [OperationContextOIDC].
  /// [aws] AWS-specific OIDC configuration.
  /// [azure] Azure-specific OIDC configuration.
  /// [gcp] GCP-specific OIDC configuration.
  OperationContextOIDC({
    this.aws,
    this.azure,
    this.gcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aws': ?pulumi.Input.mapOptionalInputValue<AWSOIDCConfiguration, Map<String, dynamic>>(aws, (value) => value.toMap()),
      'azure': ?pulumi.Input.mapOptionalInputValue<AzureOIDCConfiguration, Map<String, dynamic>>(azure, (value) => value.toMap()),
      'gcp': ?pulumi.Input.mapOptionalInputValue<GCPOIDCConfiguration, Map<String, dynamic>>(gcp, (value) => value.toMap()),
    };
  }

  factory OperationContextOIDC.fromMap(Map<String, dynamic> map) {
    return OperationContextOIDC(
      aws: map['aws'] == null ? null : (AWSOIDCConfiguration.fromMap((map['aws']! as Map).cast<String, dynamic>())).input(),
      azure: map['azure'] == null ? null : (AzureOIDCConfiguration.fromMap((map['azure']! as Map).cast<String, dynamic>())).input(),
      gcp: map['gcp'] == null ? null : (GCPOIDCConfiguration.fromMap((map['gcp']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

