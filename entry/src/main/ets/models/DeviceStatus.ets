export enum DeviceConnectionState {
  Current = 'current'
}

export interface DeviceStatus {
  displayName: string;
  connectionState: DeviceConnectionState;
}
