import { FocusSession, FocusSummary } from '../models/FocusModels';

export interface FocusService {
  getCurrentSession(): FocusSession;
  getTodaySummary(): FocusSummary;
}
