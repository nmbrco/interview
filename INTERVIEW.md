## Technical Interview

### Process

Part of the interview process at Nmbr involves completing a pair programming style technical interview and assessment. The Nmbr backend team primarily uses PHP and Laravel for daily development, therefore the technical assessment revolves around the usage and understanding of these languages and frameworks.

Candidates will be given time to familiarize themselves with the latest versions of PHP and Laravel prior to the interview.

### Environment Setup

Prior to the interview, candidates will be expected to clone this interview repo and successfully run the existing test suite.

Candidates are free to use whatever development tools and IDEs they are familiar with.

Application setup instruction can be found in the README.md.

### Overview

As Nmbr is a payroll company, interviewers will familiarize the candidate with some simple domain concepts related to payroll such as earnings, gross pay, taxes, and net pay.

The candidate will be asked to add new functionality to enable a consumer to store employee information and earnings, calculate some simple taxes, and report on the results of these calculations.

Candidates will be given 1 hour to complete the following project requirements while **collaborating** with the interviewer.

Candidates are free to use whatever resources they require (Google, Stack Overflow, Laravel docs, etc.)

> Although this is a first iteration of the project, candidates should follow best practice to enable future iteration and improvement by other team members 

### Requirements

Acme Software Shop has licensed our API to help them calculate payroll for their clients.

They need our API to capture earnings and calculate the gross and net pay for multiple employees.

**Employee Data**

- Create and update an employee, ensuring the employee has a Name, Province and SIN number.

**Earning Data**

- Store earnings in the form of dollars for employees.

**Tax Calculation**

Calculate employee taxes by applying a tax % withholding to employees earnings.

Each employee is only taxed in 1 province. However, employees can be from different provinces. The following provinces should be supported by the API:

| Province | Tax % |
| --- | --- |
| Ontario | 5.05% |
| Manitoba | 10.8% |
| Alberta | 10% |
| British Columbia | 5.06% |

**Reports**

Acme Software Shop will also require the ability to generate a CSV report of the calculation results.

Make a CSV report retrievable over the API in the following format:

| Name | Gross Earnings | Taxes | Net Earnings |
| --- | --- | --- | --- |
| First Last | $0.00 | $0.00 | $0.00 |

**Testing**

The system must be tested:

1. Introduce integration tests (prove the endpoints work).
2. Introduce unit tests (prove the tax calculations work).

## Out of Scope

- Authentication
- Logging
- Deployment / CI

## What are we looking for?

The purpose of our live technical programming interview is to evaluate a candidate's technical skills, problem-solving abilities, and collaboration style in a real-time, interactive setting.

**Themes**
- Problem solving approach
- Code quality and maintainability 
- Testing practices
- Communication skills 
- Language and framework proficiency
- Feedback and adaptability
