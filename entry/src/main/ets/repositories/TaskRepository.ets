import { TaskItem } from '../models/TaskItem';

export interface TaskRepository {
  getTodayTasks(): TaskItem[];
}
