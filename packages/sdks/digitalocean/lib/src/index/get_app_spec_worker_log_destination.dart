// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_worker_log_destination_datadog.dart';
import 'get_app_spec_worker_log_destination_logtail.dart';
import 'get_app_spec_worker_log_destination_open_search.dart';
import 'get_app_spec_worker_log_destination_papertrail.dart';

class GetAppSpecWorkerLogDestination {
  /// Datadog configuration.
  final GetAppSpecWorkerLogDestinationDatadog? datadog;
  /// Logtail configuration.
  final GetAppSpecWorkerLogDestinationLogtail? logtail;
  /// The name of the component.
  final String name;
  /// OpenSearch configuration.
  final GetAppSpecWorkerLogDestinationOpenSearch? openSearch;
  /// Papertrail configuration.
  final GetAppSpecWorkerLogDestinationPapertrail? papertrail;

  /// Creates a new [GetAppSpecWorkerLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  GetAppSpecWorkerLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?datadog == null ? null : datadog!.toMap(),
      'logtail': ?logtail == null ? null : logtail!.toMap(),
      'name': name,
      'openSearch': ?openSearch == null ? null : openSearch!.toMap(),
      'papertrail': ?papertrail == null ? null : papertrail!.toMap(),
    };
  }

  factory GetAppSpecWorkerLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerLogDestination(
      datadog: map['datadog'] == null ? null : GetAppSpecWorkerLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>()),
      logtail: map['logtail'] == null ? null : GetAppSpecWorkerLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      openSearch: map['openSearch'] == null ? null : GetAppSpecWorkerLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>()),
      papertrail: map['papertrail'] == null ? null : GetAppSpecWorkerLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>()),
    );
  }
}

