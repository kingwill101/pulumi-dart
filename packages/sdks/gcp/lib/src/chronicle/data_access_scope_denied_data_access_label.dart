// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_access_scope_denied_data_access_label_ingestion_label.dart';

class DataAccessScopeDeniedDataAccessLabel {
  /// The asset namespace configured in the forwarder
  /// of the customer's events.
  final pulumi.Input<String>? assetNamespace;
  /// The name of the data access label.
  final pulumi.Input<String>? dataAccessLabel;
  /// (Output)
  /// Output only. The display name of the label.
  /// Data access label and log types's name
  /// will match the display name of the resource.
  /// The asset namespace will match the namespace itself.
  /// The ingestion key value pair will match the key of the tuple.
  final pulumi.Input<String>? displayName;
  /// Representation of an ingestion label type.
  /// Structure is documented below.
  final pulumi.Input<DataAccessScopeDeniedDataAccessLabelIngestionLabel>? ingestionLabel;
  /// The name of the log type.
  final pulumi.Input<String>? logType;

  /// Creates a new [DataAccessScopeDeniedDataAccessLabel].
  /// [assetNamespace] The asset namespace configured in the forwarder
  /// [dataAccessLabel] The name of the data access label.
  /// [displayName] (Output)
  /// [ingestionLabel] Representation of an ingestion label type.
  /// [logType] The name of the log type.
  const DataAccessScopeDeniedDataAccessLabel({
    this.assetNamespace,
    this.dataAccessLabel,
    this.displayName,
    this.ingestionLabel,
    this.logType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assetNamespace': ?assetNamespace,
      'dataAccessLabel': ?dataAccessLabel,
      'displayName': ?displayName,
      'ingestionLabel': ?pulumi.Input.mapOptionalInputValue<DataAccessScopeDeniedDataAccessLabelIngestionLabel, Map<String, dynamic>>(ingestionLabel, (value) => value.toMap()),
      'logType': ?logType,
    };
  }

  factory DataAccessScopeDeniedDataAccessLabel.fromMap(Map<String, dynamic> map) {
    return DataAccessScopeDeniedDataAccessLabel(
      assetNamespace: (() { final guardedValue = map['assetNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAccessLabel: (() { final guardedValue = map['dataAccessLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestionLabel: (() { final guardedValue = map['ingestionLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataAccessScopeDeniedDataAccessLabelIngestionLabel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logType: (() { final guardedValue = map['logType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

