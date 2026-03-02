// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_task_registry_credential_custom.dart';
import 'registry_task_registry_credential_source.dart';

class RegistryTaskRegistryCredential {
  /// One or more `custom` blocks as defined above.
  final pulumi.Input<List<RegistryTaskRegistryCredentialCustom>>? customs;
  /// One `source` block as defined below.
  final pulumi.Input<RegistryTaskRegistryCredentialSource>? source;

  /// Creates a new [RegistryTaskRegistryCredential].
  /// [customs] One or more `custom` blocks as defined above.
  /// [source] One `source` block as defined below.
  RegistryTaskRegistryCredential({
    this.customs,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customs': ?pulumi.Input.mapOptionalInputValue<List<RegistryTaskRegistryCredentialCustom>, List<Map<String, dynamic>>>(customs, (value) => pulumi.Input.encodeList<RegistryTaskRegistryCredentialCustom, Map<String, dynamic>>(value, (value) => value.toMap())),
      'source': ?pulumi.Input.mapOptionalInputValue<RegistryTaskRegistryCredentialSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory RegistryTaskRegistryCredential.fromMap(Map<String, dynamic> map) {
    return RegistryTaskRegistryCredential(
      customs: map['customs'] == null ? null : (pulumi.Input.decodeList<RegistryTaskRegistryCredentialCustom>(map['customs'], (value) => RegistryTaskRegistryCredentialCustom.fromMap((value as Map).cast<String, dynamic>()))).input(),
      source: map['source'] == null ? null : (RegistryTaskRegistryCredentialSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

