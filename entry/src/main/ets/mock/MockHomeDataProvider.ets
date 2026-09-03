import { HomeSnapshot } from '../models/HomeSnapshot';
import { TaskItem } from '../models/TaskItem';
import { DeviceStatus } from '../models/DeviceStatus';
import { FocusSession, FocusSummary } from '../models/FocusModels';
import { TaskRepository } from '../repositories/TaskRepository';
import { DeviceService } from '../services/DeviceService';
import { FocusService } from '../services/FocusService';
import {
  MOCK_DEVICE_STATUS,
  MOCK_FOCUS_SESSION,
  MOCK_FOCUS_SUMMARY,
  MOCK_TODAY_TASKS
} from './HomeMockData';

export class MockHomeDataProvider implements TaskRepository, FocusService, DeviceService {
  getTodayTasks(): TaskItem[] {
    return MOCK_TODAY_TASKS;
  }

  getCurrentSession(): FocusSession {
    return MOCK_FOCUS_SESSION;
  }

  getTodaySummary(): FocusSummary {
    return MOCK_FOCUS_SUMMARY;
  }

  getCurrentDevice(): DeviceStatus {
    return MOCK_DEVICE_STATUS;
  }

  getHomeSnapshot(): HomeSnapshot {
    return {
      session: this.getCurrentSession(),
      tasks: this.getTodayTasks(),
      focusSummary: this.getTodaySummary(),
      device: this.getCurrentDevice()
    };
  }
}
