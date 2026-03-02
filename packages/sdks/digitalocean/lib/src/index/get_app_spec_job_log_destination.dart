// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_spec_job_log_destination_datadog.dart';
import 'get_app_spec_job_log_destination_logtail.dart';
import 'get_app_spec_job_log_destination_open_search.dart';
import 'get_app_spec_job_log_destination_papertrail.dart';

class GetAppSpecJobLogDestination {
  /// Datadog configuration.
  final pulumi.Input<GetAppSpecJobLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<GetAppSpecJobLogDestinationLogtail>? logtail;
  /// The name of the component.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<GetAppSpecJobLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<GetAppSpecJobLogDestinationPapertrail>? papertrail;

  /// Creates a new [GetAppSpecJobLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] The name of the component.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  GetAppSpecJobLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<GetAppSpecJobLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecJobLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<GetAppSpecJobLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<GetAppSpecJobLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory GetAppSpecJobLogDestination.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestination(
      datadog: map['datadog'] == null ? null : (GetAppSpecJobLogDestinationDatadog.fromMap((map['datadog'] as Map).cast<String, dynamic>())).input(),
      logtail: map['logtail'] == null ? null : (GetAppSpecJobLogDestinationLogtail.fromMap((map['logtail'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      openSearch: map['openSearch'] == null ? null : (GetAppSpecJobLogDestinationOpenSearch.fromMap((map['openSearch'] as Map).cast<String, dynamic>())).input(),
      papertrail: map['papertrail'] == null ? null : (GetAppSpecJobLogDestinationPapertrail.fromMap((map['papertrail'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

