// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_salesforce_source_config_exclude_objects.dart';
import 'stream_source_config_salesforce_source_config_include_objects.dart';

class StreamSourceConfigSalesforceSourceConfig {
  /// Salesforce objects to exclude from the stream.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSalesforceSourceConfigExcludeObjects?>? excludeObjects;
  /// Salesforce objects to retrieve from the source.
  /// Structure is documented below.
  final pulumi.Input<StreamSourceConfigSalesforceSourceConfigIncludeObjects?>? includeObjects;
  /// Salesforce objects polling interval. The interval at which new changes will be polled for each object. The duration must be between 5 minutes and 24 hours.
  final pulumi.Input<String> pollingInterval;

  /// Creates a new [StreamSourceConfigSalesforceSourceConfig].
  /// [excludeObjects] Salesforce objects to exclude from the stream.
  /// [includeObjects] Salesforce objects to retrieve from the source.
  /// [pollingInterval] Salesforce objects polling interval. The interval at which new changes will be polled for each object. The duration must be between 5 minutes and 24 hours.
  const StreamSourceConfigSalesforceSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    required this.pollingInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSalesforceSourceConfigExcludeObjects, Map<String, dynamic>>(excludeObjects, (value) => value.toMap()),
      'includeObjects': ?pulumi.Input.mapOptionalInputValue<StreamSourceConfigSalesforceSourceConfigIncludeObjects, Map<String, dynamic>>(includeObjects, (value) => value.toMap()),
      'pollingInterval': pollingInterval,
    };
  }

  factory StreamSourceConfigSalesforceSourceConfig.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfig(
      excludeObjects: (() { final guardedValue = map['excludeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSalesforceSourceConfigExcludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeObjects: (() { final guardedValue = map['includeObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceConfigSalesforceSourceConfigIncludeObjects.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pollingInterval: pulumi.Input.fromValue(map['pollingInterval'] as String),
    );
  }
}
