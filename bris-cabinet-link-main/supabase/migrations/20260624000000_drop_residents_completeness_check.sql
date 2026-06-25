-- Drop the check constraint that blocks resident approval when optional fields are NULL.
-- This constraint was added outside of migration history and is too strict for the
-- registration flow where residents fill in minimal info at sign-up time.
ALTER TABLE public.residents
  DROP CONSTRAINT IF EXISTS residents_approved_completeness_check;
