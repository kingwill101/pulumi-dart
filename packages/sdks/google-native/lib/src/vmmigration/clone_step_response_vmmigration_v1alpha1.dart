// ignore_for_file: unused_element, unnecessary_cast


/// CloneStep holds information about the clone step progress.
class CloneStepResponseVmmigrationV1alpha1 {
  /// Adapting OS step.
  final Map<String, dynamic> adaptingOs;
  /// The time the step has ended.
  final String endTime;
  /// Instantiating migrated VM step.
  final Map<String, dynamic> instantiatingMigratedVm;
  /// Preparing VM disks step.
  final Map<String, dynamic> preparingVmDisks;
  /// The time the step has started.
  final String startTime;

  /// Creates a new [CloneStepResponseVmmigrationV1alpha1].
  /// [adaptingOs] Adapting OS step.
  /// [endTime] The time the step has ended.
  /// [instantiatingMigratedVm] Instantiating migrated VM step.
  /// [preparingVmDisks] Preparing VM disks step.
  /// [startTime] The time the step has started.
  CloneStepResponseVmmigrationV1alpha1({
    required this.adaptingOs,
    required this.endTime,
    required this.instantiatingMigratedVm,
    required this.preparingVmDisks,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptingOs': adaptingOs,
      'endTime': endTime,
      'instantiatingMigratedVm': instantiatingMigratedVm,
      'preparingVmDisks': preparingVmDisks,
      'startTime': startTime,
    };
  }

  factory CloneStepResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return CloneStepResponseVmmigrationV1alpha1(
      adaptingOs: (map['adaptingOs'] as Map).cast<String, dynamic>(),
      endTime: map['endTime'] as String,
      instantiatingMigratedVm: (map['instantiatingMigratedVm'] as Map).cast<String, dynamic>(),
      preparingVmDisks: (map['preparingVmDisks'] as Map).cast<String, dynamic>(),
      startTime: map['startTime'] as String,
    );
  }
}

