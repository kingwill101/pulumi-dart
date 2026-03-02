// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AML file system HSM settings.
class AmlFilesystemHsmSettingsResponse {
  /// Resource ID of storage container used for hydrating the namespace and archiving from the namespace. The resource provider must have permission to create SAS tokens on the storage account.
  final pulumi.Input<String> container;
  /// Only blobs in the non-logging container that start with this path/prefix get imported into the cluster namespace. This is only used during initial creation of the AML file system. It automatically creates an import job resource that can be deleted.
  final pulumi.Input<String>? importPrefix;
  /// Only blobs in the non-logging container that start with one of the paths/prefixes in this array get imported into the cluster namespace. This is only used during initial creation of the AML file system and has '/' as the default value. It automatically creates an import job resource that can be deleted.
  final pulumi.Input<List<String>>? importPrefixesInitial;
  /// Resource ID of storage container used for logging events and errors.  Must be a separate container in the same storage account as the hydration and archive container. The resource provider must have permission to create SAS tokens on the storage account.
  final pulumi.Input<String> loggingContainer;

  /// Creates a new [AmlFilesystemHsmSettingsResponse].
  /// [container] Resource ID of storage container used for hydrating the namespace and archiving from the namespace. The resource provider must have permission to create SAS tokens on the storage account.
  /// [importPrefix] Only blobs in the non-logging container that start with this path/prefix get imported into the cluster namespace. This is only used during initial creation of the AML file system. It automatically creates an import job resource that can be deleted.
  /// [importPrefixesInitial] Only blobs in the non-logging container that start with one of the paths/prefixes in this array get imported into the cluster namespace. This is only used during initial creation of the AML file system and has '/' as the default value. It automatically creates an import job resource that can be deleted.
  /// [loggingContainer] Resource ID of storage container used for logging events and errors.  Must be a separate container in the same storage account as the hydration and archive container. The resource provider must have permission to create SAS tokens on the storage account.
  AmlFilesystemHsmSettingsResponse({
    required this.container,
    this.importPrefix,
    this.importPrefixesInitial,
    required this.loggingContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': container,
      'importPrefix': ?importPrefix,
      'importPrefixesInitial': ?importPrefixesInitial,
      'loggingContainer': loggingContainer,
    };
  }

  factory AmlFilesystemHsmSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemHsmSettingsResponse(
      container: (map['container'] as String).input(),
      importPrefix: map['importPrefix'] == null ? null : (map['importPrefix'] as String).input(),
      importPrefixesInitial: map['importPrefixesInitial'] == null ? null : ((map['importPrefixesInitial'] as List).cast<String>()).input(),
      loggingContainer: (map['loggingContainer'] as String).input(),
    );
  }
}

