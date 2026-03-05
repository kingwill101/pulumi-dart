// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'common_language_settings.dart';

/// Settings for Dotnet client libraries.
class DotnetSettings {
  /// Some settings.
  final pulumi.Input<CommonLanguageSettings>? common;
  /// Namespaces which must be aliased in snippets due to a known (but non-generator-predictable) naming collision
  final pulumi.Input<List<String>>? forcedNamespaceAliases;
  /// Method signatures (in the form "service.method(signature)") which are provided separately, so shouldn't be generated. Snippets *calling* these methods are still generated, however.
  final pulumi.Input<List<String>>? handwrittenSignatures;
  /// List of full resource types to ignore during generation. This is typically used for API-specific Location resources, which should be handled by the generator as if they were actually the common Location resources. Example entry: "documentai.googleapis.com/Location"
  final pulumi.Input<List<String>>? ignoredResources;
  /// Map from full resource types to the effective short name for the resource. This is used when otherwise resource named from different services would cause naming collisions. Example entry: "datalabeling.googleapis.com/Dataset": "DataLabelingDataset"
  final pulumi.Input<Map<String, String>>? renamedResources;
  /// Map from original service names to renamed versions. This is used when the default generated types would cause a naming conflict. (Neither name is fully-qualified.) Example: Subscriber to SubscriberServiceApi.
  final pulumi.Input<Map<String, String>>? renamedServices;

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
      'common': ?pulumi.Input.mapOptionalInputValue<CommonLanguageSettings, Map<String, dynamic>>(common, (value) => value.toMap()),
      'forcedNamespaceAliases': ?forcedNamespaceAliases,
      'handwrittenSignatures': ?handwrittenSignatures,
      'ignoredResources': ?ignoredResources,
      'renamedResources': ?renamedResources,
      'renamedServices': ?renamedServices,
    };
  }

  factory DotnetSettings.fromMap(Map<String, dynamic> map) {
    return DotnetSettings(
      common: (() { final guardedValue = map['common']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommonLanguageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forcedNamespaceAliases: (() { final guardedValue = map['forcedNamespaceAliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      handwrittenSignatures: (() { final guardedValue = map['handwrittenSignatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ignoredResources: (() { final guardedValue = map['ignoredResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      renamedResources: (() { final guardedValue = map['renamedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      renamedServices: (() { final guardedValue = map['renamedServices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

