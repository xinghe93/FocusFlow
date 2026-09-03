export enum FocusSessionState {
  Idle = 'idle',
  Focusing = 'focusing'
}

export interface FocusSession {
  state: FocusSessionState;
  taskTitle: string;
  elapsedMinutes: number;
}

export interface FocusSummary {
  totalMinutes: number;
  sessionCount: number;
}
