// ignore_for_file: unused_element, unnecessary_cast

import 'common_language_settings.dart';

/// Settings for Dotnet client libraries.
class DotnetSettings {
  /// Some settings.
  final CommonLanguageSettings? common;
  /// Namespaces which must be aliased in snippets due to a known (but non-generator-predictable) naming collision
  final List<String>? forcedNamespaceAliases;
  /// Method signatures (in the form "service.method(signature)") which are provided separately, so shouldn't be generated. Snippets *calling* these methods are still generated, however.
  final List<String>? handwrittenSignatures;
  /// List of full resource types to ignore during generation. This is typically used for API-specific Location resources, which should be handled by the generator as if they were actually the common Location resources. Example entry: "documentai.googleapis.com/Location"
  final List<String>? ignoredResources;
  /// Map from full resource types to the effective short name for the resource. This is used when otherwise resource named from different services would cause naming collisions. Example entry: "datalabeling.googleapis.com/Dataset": "DataLabelingDataset"
  final Map<String, String>? renamedResources;
  /// Map from original service names to renamed versions. This is used when the default generated types would cause a naming conflict. (Neither name is fully-qualified.) Example: Subscriber to SubscriberServiceApi.
  final Map<String, String>? renamedServices;

  /// Creates a new [DotnetSettings].
  /// [common] Some settings.
  /// [forcedNamespaceAliases] Namespaces which must be aliased in snippets due to a known (but non-generator-predictable) naming collision
  /// [handwrittenSignatures] Method signatures (in the form "service.method(signature)") which are provided separately, so shouldn't be generated. Snippets *calling* these methods are still generated, however.
  /// [ignoredResources] List of full resource types to ignore during generation. This is typically used for API-specific Location resources, which should be handled by the generator as if they were actually the common Location resources. Example entry: "documentai.googleapis.com/Location"
  /// [renamedResources] Map from full resource types to the effective short name for the resource. This is used when otherwise resource named from different services would cause naming collisions. Example entry: "datalabeling.googleapis.com/Dataset": "DataLabelingDataset"
  /// [renamedServices] Map from original service names to renamed versions. This is used when the default generated types would cause a naming conflict. (Neither name is fully-qualified.) Example: Subscriber to SubscriberServiceApi.
  DotnetSettings({
    this.common,
    this.forcedNamespaceAliases,
    this.handwrittenSignatures,
    this.ignoredResources,
    this.renamedResources,
    this.renamedServices,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'common': ?common == null ? null : common!.toMap(),
      'forcedNamespaceAliases': ?forcedNamespaceAliases,
      'handwrittenSignatures': ?handwrittenSignatures,
      'ignoredResources': ?ignoredResources,
      'renamedResources': ?renamedResources,
      'renamedServices': ?renamedServices,
    };
  }

  factory DotnetSettings.fromMap(Map<String, dynamic> map) {
    return DotnetSettings(
      common: map['common'] == null ? null : CommonLanguageSettings.fromMap((map['common'] as Map).cast<String, dynamic>()),
      forcedNamespaceAliases: map['forcedNamespaceAliases'] == null ? null : (map['forcedNamespaceAliases'] as List).cast<String>(),
      handwrittenSignatures: map['handwrittenSignatures'] == null ? null : (map['handwrittenSignatures'] as List).cast<String>(),
      ignoredResources: map['ignoredResources'] == null ? null : (map['ignoredResources'] as List).cast<String>(),
      renamedResources: map['renamedResources'] == null ? null : (map['renamedResources'] as Map).cast<String, String>(),
      renamedServices: map['renamedServices'] == null ? null : (map['renamedServices'] as Map).cast<String, String>(),
    );
  }
}

