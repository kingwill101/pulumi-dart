// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage account blob change feed status of the auto import job.
class AutoImportJobResponseBlobSyncEvents {
  /// Number of deletions during auto import.
  final pulumi.Input<double> deletions;
  /// Number of directories imported during auto import.
  final pulumi.Input<double> importedDirectories;
  /// Number of files imported during auto import.
  final pulumi.Input<double> importedFiles;
  /// Number of symlinks imported during auto import.
  final pulumi.Input<double> importedSymlinks;
  /// Date and time of the last Change Feed event consumed.
  final pulumi.Input<String> lastChangeFeedEventConsumedTime;
  /// Date and time when last fully synchronized.
  final pulumi.Input<String> lastTimeFullySynchronized;
  /// Number of preexisting directories during auto import.
  final pulumi.Input<double> preexistingDirectories;
  /// Number of preexisting files during auto import.
  final pulumi.Input<double> preexistingFiles;
  /// Number of preexisting symlinks during auto import.
  final pulumi.Input<double> preexistingSymlinks;
  /// Rate of blob import per second during auto import.
  final pulumi.Input<double> rateOfBlobImport;
  /// Total number of blobs imported during auto import.
  final pulumi.Input<double> totalBlobsImported;
  /// Total conflicts encountered during auto import.
  final pulumi.Input<double> totalConflicts;
  /// Total errors encountered during auto import.
  final pulumi.Input<double> totalErrors;

  /// Creates a new [AutoImportJobResponseBlobSyncEvents].
  /// [deletions] Number of deletions during auto import.
  /// [importedDirectories] Number of directories imported during auto import.
  /// [importedFiles] Number of files imported during auto import.
  /// [importedSymlinks] Number of symlinks imported during auto import.
  /// [lastChangeFeedEventConsumedTime] Date and time of the last Change Feed event consumed.
  /// [lastTimeFullySynchronized] Date and time when last fully synchronized.
  /// [preexistingDirectories] Number of preexisting directories during auto import.
  /// [preexistingFiles] Number of preexisting files during auto import.
  /// [preexistingSymlinks] Number of preexisting symlinks during auto import.
  /// [rateOfBlobImport] Rate of blob import per second during auto import.
  /// [totalBlobsImported] Total number of blobs imported during auto import.
  /// [totalConflicts] Total conflicts encountered during auto import.
  /// [totalErrors] Total errors encountered during auto import.
  AutoImportJobResponseBlobSyncEvents({
    required this.deletions,
    required this.importedDirectories,
    required this.importedFiles,
    required this.importedSymlinks,
    required this.lastChangeFeedEventConsumedTime,
    required this.lastTimeFullySynchronized,
    required this.preexistingDirectories,
    required this.preexistingFiles,
    required this.preexistingSymlinks,
    required this.rateOfBlobImport,
    required this.totalBlobsImported,
    required this.totalConflicts,
    required this.totalErrors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletions': deletions,
      'importedDirectories': importedDirectories,
      'importedFiles': importedFiles,
      'importedSymlinks': importedSymlinks,
      'lastChangeFeedEventConsumedTime': lastChangeFeedEventConsumedTime,
      'lastTimeFullySynchronized': lastTimeFullySynchronized,
      'preexistingDirectories': preexistingDirectories,
      'preexistingFiles': preexistingFiles,
      'preexistingSymlinks': preexistingSymlinks,
      'rateOfBlobImport': rateOfBlobImport,
      'totalBlobsImported': totalBlobsImported,
      'totalConflicts': totalConflicts,
      'totalErrors': totalErrors,
    };
  }

  factory AutoImportJobResponseBlobSyncEvents.fromMap(Map<String, dynamic> map) {
    return AutoImportJobResponseBlobSyncEvents(
      deletions: (map['deletions'] as double).input(),
      importedDirectories: (map['importedDirectories'] as double).input(),
      importedFiles: (map['importedFiles'] as double).input(),
      importedSymlinks: (map['importedSymlinks'] as double).input(),
      lastChangeFeedEventConsumedTime: (map['lastChangeFeedEventConsumedTime'] as String).input(),
      lastTimeFullySynchronized: (map['lastTimeFullySynchronized'] as String).input(),
      preexistingDirectories: (map['preexistingDirectories'] as double).input(),
      preexistingFiles: (map['preexistingFiles'] as double).input(),
      preexistingSymlinks: (map['preexistingSymlinks'] as double).input(),
      rateOfBlobImport: (map['rateOfBlobImport'] as double).input(),
      totalBlobsImported: (map['totalBlobsImported'] as double).input(),
      totalConflicts: (map['totalConflicts'] as double).input(),
      totalErrors: (map['totalErrors'] as double).input(),
    );
  }
}

