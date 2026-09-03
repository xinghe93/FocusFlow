import { DeviceConnectionState, DeviceStatus } from '../models/DeviceStatus';
import { FocusSession, FocusSessionState, FocusSummary } from '../models/FocusModels';
import { TaskItem, TaskStatus } from '../models/TaskItem';

// 首页 MVP 专用模拟数据，后续通过仓库和服务的真实实现替换。
export const MOCK_FOCUS_SESSION: FocusSession = {
  state: FocusSessionState.Idle,
  taskTitle: '',
  elapsedMinutes: 0
};

export const MOCK_TODAY_TASKS: TaskItem[] = [
  {
    id: 'task-001',
    title: '复习分布式系统笔记',
    estimatedMinutes: 30,
    status: TaskStatus.Pending
  },
  {
    id: 'task-002',
    title: '完成 ArkTS 练习',
    estimatedMinutes: 45,
    status: TaskStatus.Pending
  },
  {
    id: 'task-003',
    title: '规划明天的学习安排',
    estimatedMinutes: 15,
    status: TaskStatus.Completed
  }
];

export const MOCK_FOCUS_SUMMARY: FocusSummary = {
  totalMinutes: 75,
  sessionCount: 3
};

export const MOCK_DEVICE_STATUS: DeviceStatus = {
  displayName: '本设备',
  connectionState: DeviceConnectionState.Current
};
