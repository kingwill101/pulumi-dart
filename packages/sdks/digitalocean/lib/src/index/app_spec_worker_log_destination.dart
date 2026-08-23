// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_spec_worker_log_destination_datadog.dart';
import 'app_spec_worker_log_destination_logtail.dart';
import 'app_spec_worker_log_destination_open_search.dart';
import 'app_spec_worker_log_destination_papertrail.dart';

class AppSpecWorkerLogDestination {
  /// Datadog configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationDatadog>? datadog;
  /// Logtail configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationLogtail>? logtail;
  /// Name of the log destination. Minimum length: 2. Maximum length: 42.
  final pulumi.Input<String> name;
  /// OpenSearch configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationOpenSearch>? openSearch;
  /// Papertrail configuration.
  final pulumi.Input<AppSpecWorkerLogDestinationPapertrail>? papertrail;

  /// Creates a new [AppSpecWorkerLogDestination].
  /// [datadog] Datadog configuration.
  /// [logtail] Logtail configuration.
  /// [name] Name of the log destination. Minimum length: 2. Maximum length: 42.
  /// [openSearch] OpenSearch configuration.
  /// [papertrail] Papertrail configuration.
  const AppSpecWorkerLogDestination({
    this.datadog,
    this.logtail,
    required this.name,
    this.openSearch,
    this.papertrail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datadog': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationDatadog, Map<String, dynamic>>(datadog, (value) => value.toMap()),
      'logtail': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationLogtail, Map<String, dynamic>>(logtail, (value) => value.toMap()),
      'name': name,
      'openSearch': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationOpenSearch, Map<String, dynamic>>(openSearch, (value) => value.toMap()),
      'papertrail': ?pulumi.Input.mapOptionalInputValue<AppSpecWorkerLogDestinationPapertrail, Map<String, dynamic>>(papertrail, (value) => value.toMap()),
    };
  }

  factory AppSpecWorkerLogDestination.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestination(
      datadog: (() { final guardedValue = map['datadog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecWorkerLogDestinationDatadog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logtail: (() { final guardedValue = map['logtail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecWorkerLogDestinationLogtail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      openSearch: (() { final guardedValue = map['openSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecWorkerLogDestinationOpenSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      papertrail: (() { final guardedValue = map['papertrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppSpecWorkerLogDestinationPapertrail.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
