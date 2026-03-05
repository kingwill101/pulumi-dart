/// Type of this accelerator.
enum SchedulerAcceleratorConfigType {
  schedulerAcceleratorTypeUnspecified("SCHEDULER_ACCELERATOR_TYPE_UNSPECIFIED"),
  nvidiaTeslaK80("NVIDIA_TESLA_K80"),
  nvidiaTeslaP100("NVIDIA_TESLA_P100"),
  nvidiaTeslaV100("NVIDIA_TESLA_V100"),
  nvidiaTeslaP4("NVIDIA_TESLA_P4"),
  nvidiaTeslaT4("NVIDIA_TESLA_T4"),
  nvidiaTeslaA100("NVIDIA_TESLA_A100"),
  tpuV2("TPU_V2"),
  tpuV3("TPU_V3");

  const SchedulerAcceleratorConfigType(this.wireValue);
  final String wireValue;

  static SchedulerAcceleratorConfigType fromValue(String value) {
    for (final item in SchedulerAcceleratorConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SchedulerAcceleratorConfigType value: $value');
  }
}

