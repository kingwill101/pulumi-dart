// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_job_log_destination_datadog.dart';
import 'app_spec_job_log_destination_logtail.dart';
import 'app_spec_job_log_destination_open_search.dart';
import 'app_spec_job_log_destination_papertrail.dart';

class AppSpecJobLogDestination {
  /// Datadog configuration.
  final pulumi.Input<AppSpecJobLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<AppSpecJobLogDestinationLogtail>? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<AppSpecJobLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<AppSpecJobLogDestinationPapertrail>? papertrail;

  /// Creates a new [AppSpecJobLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  AppSpecJobLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<AppSpecJobLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<AppSpecJobLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<AppSpecJobLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<AppSpecJobLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory AppSpecJobLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecJobLogDestination(
      datadog: map['datadog'] == null ? null : (AppSpecJobLogDestinationDatadog.fromMap((map['datadog']! as Map).cast<String, dynamic>())).input(),
      logtail: map['logtail'] == null ? null : (AppSpecJobLogDestinationLogtail.fromMap((map['logtail']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      openSearch: map['openSearch'] == null ? null : (AppSpecJobLogDestinationOpenSearch.fromMap((map['openSearch']! as Map).cast<String, dynamic>())).input(),
      papertrail: map['papertrail'] == null ? null : (AppSpecJobLogDestinationPapertrail.fromMap((map['papertrail']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

