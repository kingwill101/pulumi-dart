// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'logging_variant_config_response.dart';

/// NodePoolLoggingConfig specifies logging configuration for nodepools.
class NodePoolLoggingConfigResponse {
  /// Logging variant configuration.
  final pulumi.Input<LoggingVariantConfigResponse> variantConfig;

  /// Creates a new [NodePoolLoggingConfigResponse].
  /// [variantConfig] Logging variant configuration.
  NodePoolLoggingConfigResponse({required this.variantConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'variantConfig':
          pulumi.Input.mapInputValue<
            LoggingVariantConfigResponse,
            Map<String, dynamic>
          >(variantConfig, (value) => value.toMap()),
    };
  }

  factory NodePoolLoggingConfigResponse.fromMap(Map<String, dynamic> map) {
    return NodePoolLoggingConfigResponse(
      variantConfig: pulumi.Input.fromValue(
        LoggingVariantConfigResponse.fromMap(
          (map['variantConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
