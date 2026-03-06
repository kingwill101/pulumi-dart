// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_worker_log_destination_datadog.dart';
import 'get_app_spec_worker_log_destination_logtail.dart';
import 'get_app_spec_worker_log_destination_open_search.dart';
import 'get_app_spec_worker_log_destination_papertrail.dart';

class GetAppSpecWorkerLogDestination {
  /// Datadog configuration.
  final pulumi.Input<GetAppSpecWorkerLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<GetAppSpecWorkerLogDestinationLogtail>? logtail;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<GetAppSpecWorkerLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<GetAppSpecWorkerLogDestinationPapertrail>? papertrail;

  /// Creates a new [GetAppSpecWorkerLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  const GetAppSpecWorkerLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecWorkerLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory GetAppSpecWorkerLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerLogDestination(
      datadog: (() { final guardedValue = map['datadog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerLogDestinationDatadog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logtail: (() { final guardedValue = map['logtail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerLogDestinationLogtail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      openSearch: (() { final guardedValue = map['openSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerLogDestinationOpenSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      papertrail: (() { final guardedValue = map['papertrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetAppSpecWorkerLogDestinationPapertrail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

