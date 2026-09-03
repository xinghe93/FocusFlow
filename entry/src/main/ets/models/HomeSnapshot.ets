import { DeviceStatus } from './DeviceStatus';
import { FocusSession, FocusSummary } from './FocusModels';
import { TaskItem } from './TaskItem';

export interface HomeSnapshot {
  session: FocusSession;
  tasks: TaskItem[];
  focusSummary: FocusSummary;
  device: DeviceStatus;
}
