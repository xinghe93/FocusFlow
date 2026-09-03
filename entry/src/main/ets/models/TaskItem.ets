export enum TaskStatus {
  Pending = 'pending',
  Completed = 'completed'
}

export interface TaskItem {
  id: string;
  title: string;
  estimatedMinutes: number;
  status: TaskStatus;
}
