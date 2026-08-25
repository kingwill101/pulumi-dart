// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_sink_bigquery_option.dart';
import 'get_sink_exclusion.dart';

/// Result data returned by getSink.
class GetSinkResult {
  /// Options that affect sinks exporting data to BigQuery. Structure is documented below.
  final List<GetSinkBigqueryOption>? bigqueryOptions;
  final String? deletionPolicy;
  /// A description of this exclusion.
  final String? description;
  /// The destination of the sink (or, in other words, where logs are written to).
  final String? destination;
  /// Whether this exclusion is disabled and it does not exclude any log entries.
  final bool? disabled;
  /// Log entries that match any of the exclusion filters are not exported. Structure is documented below.
  final List<GetSinkExclusion>? exclusions;
  /// An advanced logs filter that matches the log entries to be excluded.
  final String? filter;
  final String? id;
  /// A client-assigned identifier, such as `load-balancer-exclusion`.
  final String? name;
  /// The identity associated with this sink. This identity must be granted write access to the configured `destination`.
  final String? writerIdentity;

  /// Creates a new [GetSinkResult].
  /// [bigqueryOptions] Options that affect sinks exporting data to BigQuery. Structure is documented below.
  /// [deletionPolicy] Optional.
  /// [description] A description of this exclusion.
  /// [destination] The destination of the sink (or, in other words, where logs are written to).
  /// [disabled] Whether this exclusion is disabled and it does not exclude any log entries.
  /// [exclusions] Log entries that match any of the exclusion filters are not exported. Structure is documented below.
  /// [filter] An advanced logs filter that matches the log entries to be excluded.
  /// [id] Optional.
  /// [name] A client-assigned identifier, such as `load-balancer-exclusion`.
  /// [writerIdentity] The identity associated with this sink. This identity must be granted write access to the configured `destination`.
  const GetSinkResult({
    this.bigqueryOptions,
    this.deletionPolicy,
    this.description,
    this.destination,
    this.disabled,
    this.exclusions,
    this.filter,
    this.id,
    this.name,
    this.writerIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryOptions': ?(() { final guardedValue = bigqueryOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSinkBigqueryOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'destination': ?destination,
      'disabled': ?disabled,
      'exclusions': ?(() { final guardedValue = exclusions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSinkExclusion, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filter': ?filter,
      'id': ?id,
      'name': ?name,
      'writerIdentity': ?writerIdentity,
    };
  }

  factory GetSinkResult.fromMap(Map<String, dynamic> map) {
    return GetSinkResult(
      bigqueryOptions: (() { final guardedValue = map['bigqueryOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSinkBigqueryOption>(guardedValue, (value) => GetSinkBigqueryOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSinkExclusion>(guardedValue, (value) => GetSinkExclusion.fromMap((value as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      writerIdentity: (() { final guardedValue = map['writerIdentity']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
