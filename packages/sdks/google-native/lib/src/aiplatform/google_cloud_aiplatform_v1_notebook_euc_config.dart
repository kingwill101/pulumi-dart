// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The euc configuration of NotebookRuntimeTemplate.
class GoogleCloudAiplatformV1NotebookEucConfig {
  /// Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  final pulumi.Input<bool>? eucDisabled;

  /// Creates a new [GoogleCloudAiplatformV1NotebookEucConfig].
  /// [eucDisabled] Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  const GoogleCloudAiplatformV1NotebookEucConfig({
    this.eucDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eucDisabled': ?eucDisabled,
    };
  }

  factory GoogleCloudAiplatformV1NotebookEucConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1NotebookEucConfig(
      eucDisabled: (() { final guardedValue = map['eucDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
