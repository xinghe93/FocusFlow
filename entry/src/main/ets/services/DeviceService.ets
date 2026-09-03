import { DeviceStatus } from '../models/DeviceStatus';

export interface DeviceService {
  getCurrentDevice(): DeviceStatus;
}
